output "openimis_server_ip" {
  value = google_compute_instance.openimis_server.network_interface[0].access_config[0].nat_ip
}

output "hcwathome_server_ip" {
  value = google_compute_instance.hcwathome_server.network_interface[0].access_config[0].nat_ip
}
