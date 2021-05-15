resource "google_compute_instance" "default" {
  name = "ci-machine"
  machine_type = "e2-medium"
  zone = "europe-west2-a"
  boot_disk {
      initialize_params {
        image = "ubuntu-1604-xenial-v20210429"
      }
  }
  network_interface {
    network ="default"
    access_config {}
  }
}