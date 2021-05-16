provider "google" {
  credentials = file("credentials/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}

resource "google_service_account" "default" {
  account_id   = "terraform-account"
  display_name = "Test Service Account"
}

module "ci-machine" {
  source = "./vm"
}

module "test-cluster" {
  source = "./gke/cluster"
}
#
#module "test-node-pool" {
#  source = "./gke/node-pool"
#}