resource "google_compute_instance" "openimis_server" {
  name         = "openimis-server"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.default.self_link
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt-get update && sudo apt-get install -y python3"
}

resource "google_compute_instance" "hcwathome_server" {
  name         = "hcwathome-server"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.default.self_link
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt-get update && sudo apt-get install -y python3"
}
