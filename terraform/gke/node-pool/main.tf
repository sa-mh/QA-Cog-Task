resource "google_container_node_pool" "node_pool" {
  name       = var.pool_name
  location   = var.pool_location
  cluster    = var.cluster_name
  node_count = var.nodes #default 2

  node_config {
    preemptible  = var.preemptible_bool #default true
    machine_type = var.node_machine_type #default e2-medium
    service_account = var.service_acct #defaults to created service account
  }
}