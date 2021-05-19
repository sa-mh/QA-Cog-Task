resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
  description = var.desc
  auto_create_subnetworks = false
}