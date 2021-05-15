provider "google" {
  credentials = file("service-account/qa-cog-task-da4e551d7692.json")
  project     = "qa-cog-task"
  region      = "europe-west2"
}

module "ci-machine" {
  source = "./vm"
}