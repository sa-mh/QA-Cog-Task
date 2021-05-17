resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "europe-west2-a"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  node_config {
    service_account = "terraform-account@qa-cog-task.iam.gserviceaccount.com"
  }
}

#temporarily here
resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = "europe-west2-a"
  cluster    = google_container_cluster.primary.name
  node_count = 5

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    service_account = "terraform-account@qa-cog-task.iam.gserviceaccount.com"
  }
  upgrade_settings {
    max_surge = 10
    max_unavailable = 1
  }
}