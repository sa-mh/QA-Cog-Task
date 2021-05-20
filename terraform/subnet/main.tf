resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.ip_range
  region        = var.network_region
  network       = var.vpc
}