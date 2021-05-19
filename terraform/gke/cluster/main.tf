resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.cluster_location
  remove_default_node_pool = var.remove_default #defaults yes
  initial_node_count       = var.initial_nodes #defaults 1
  description = var.desc
  network = var.vpc_name
  subnetwork = var.subnet_name
}