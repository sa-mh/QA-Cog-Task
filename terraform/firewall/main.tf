resource "google_compute_firewall" "firewall" {
    name = var.firewall_name
    network = var.vpc_id
    allow {
        protocol = "tcp"
        ports = var.firewall_ports
    }
}