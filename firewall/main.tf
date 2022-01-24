#Allows http/s and tcp 22 for ssh connections with tags
esource "google_compute_firewall" "fw-access1" {
  name    = "allow-rule"
  network = var.network_id
  source_ranges = ["0.0.0.0/0"]
  target_tags = var.tags
  priority    = "1000"
  
  allow {
    protocol = "tcp"
    ports    = ["22","80","443"]
  }
}
