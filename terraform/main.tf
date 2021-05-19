provider "google" {
  credentials = file("credentials/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}
module "vpc" {
  source   = "./vpc"
  vpc_name = "task-vpc"
  desc     = "The VPC created for the task"
}

module "subnet" {
  source      = "./subnet"
  subnet_name = "eu-west1-subnet"
  vpc         = module.vpc.vpc-id
}

module "ci_machine" {
  source  = "./vm"
  vm_name = "ci-machine"
  vpc     = module.vpc.vpc-id
  subnet  = module.subnet.subnet-id
}
module "main_cluster" {
  source           = "./gke/cluster"
  cluster_name     = "gke-cluster"
  cluster_location = "europe-west2-a"
  desc             = "The first, main cluster"
  vpc_name         = module.vpc.vpc-id
  subnet_name      = module.subnet.subnet-id
}
module "first-node-pool" {
  source        = "./gke/node-pool"
  pool_name     = "primary-nodes"
  pool_location = module.main_cluster.zone
  cluster_name  = module.main_cluster.cluster-name
}
module "second-node-pool" {
  source        = "./gke/node-pool"
  pool_name     = "secondary-nodes"
  pool_location = module.main_cluster.zone
  cluster_name  = module.main_cluster.cluster-name
  nodes         = 3
}