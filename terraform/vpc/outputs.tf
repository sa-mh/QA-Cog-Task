output "vpc-name" {
  value = google_compute_network.vpc_network.name
}
output "vpc-id" {
  value = google_compute_network.vpc_network.id
}