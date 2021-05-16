provider "google" {
  credentials = file("credentials/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}
module "terraform_account" {
  source         = "./service-account/account"
  new_account_id = "terraform-gke-account"
  account_name   = "gke_service_account"
}

#module "account_roles" {
#  source = "./service-account/roles"
#  service_account_id = module.terraform_account.account_id
#}

module "ci_machine" {
  source = "./vm"
}

#module "test_cluster" {
#  source = "./gke/cluster"
#}
#
#module "test-node-pool" {
#  source = "./gke/node-pool"
#}