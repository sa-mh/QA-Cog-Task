provider "google" {
  credentials = file("credentials/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}

module "ci_machine" {
  source = "./vm"
}
module "test_cluster" {
  source = "./gke/cluster"
}



/* 
module "test-node-pool" {
  source = "./gke/node-pool"
}

module "terraform_account" {
  source         = "./service-account/account"
  new_account_id = "terraform-gke-account"
  account_name   = "gke_service_account"
}

module "account_roles_container" {
  source       = "./service-account/roles"
  account_id   = module.terraform_account.test_name_output
  account_role = "roles/container.admin"
}
module "account_roles_compute" {
  source       = "./service-account/roles"
  account_id   = module.terraform_account.test_name_output
  account_role = "roles/compute.admin"
}
module "account_roles_account" {
  source       = "./service-account/roles"
  account_id   = module.terraform_account.test_name_output
  account_role = "roles/iam.serviceAccountAdmin"
}
module "account_roles_storage" {
  source       = "./service-account/roles"
  account_id   = module.terraform_account.test_name_output
  account_role = "roles/composer.environmentAndStorageObjectAdmi"
}
*/