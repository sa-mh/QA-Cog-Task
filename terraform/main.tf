provider "google" {
  credentials = $gcp_credentials
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
  subnet_name = "eu-west2-subnet"
  vpc         = module.vpc.vpc-id
}

module "ssh-firewall" {
  source         = "./firewall"
  vpc_id         = module.vpc.vpc-id
  firewall_name  = "ssh-firewall"
  firewall_ports = ["22", "80", "443", "8081", "8800"]
}

module "google_compute_project_metadata" {
  source = "./ssh_data"
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