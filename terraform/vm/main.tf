resource "google_compute_instance" "default" {
  name = var.vm_name
  machine_type = var.machine
  zone = var.vm_zone
  boot_disk {
      initialize_params {
        image = "ubuntu-1604-xenial-v20210429"
      }
  }
  network_interface {
    network = var.vpc
    subnetwork = var.subnet
    access_config {}
  }
}