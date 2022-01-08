resource "google_compute_network" "vpc" {
  name                    = "my-vpc"
  description             = "vpc for wordpress instances"
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "private" {
  name          = "private"
  ip_cidr_range = "192.168.24.0/24"
  region        = "us-east1" 
  network       = google_compute_network.vpc.self_link
  private_ip_google_access = true
}

output "subnet_id_1" {
  value = google_compute_network.vpc.name
}
