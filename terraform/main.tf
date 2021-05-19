provider "google" {
  credentials = file("credentials/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}

module "ci_machine" {
  source = "./vm"
}
module "main_cluster" {
  source           = "./gke/cluster"
  cluster_name     = "gke-cluster"
  cluster_location = "europe-west2-a"
  desc = "The first, main cluster"
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
  nodes = 3
}