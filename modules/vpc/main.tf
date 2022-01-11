resource "google_compute_network" "my-vpc" {
  name                    = var.vpc_name
  description             = "vpc for wordpress instances"
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "sub" {
  network = google_compute_network.my-vpc.id
  name          = var.sub_name
  ip_cidr_range = "192.168.24.0/24"
  region        = var.region_name
  private_ip_google_access = true
}

