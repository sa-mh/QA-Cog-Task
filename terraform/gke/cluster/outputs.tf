output "cluster-name" {
  value = google_container_cluster.primary.name
}
output "endpoint" {
  value = google_container_cluster.primary.endpoint
}
output "zone" {
  value = google_container_cluster.primary.location
}