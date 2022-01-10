resource "google_compute_network" "my-vpc" {
  name                    = "my-vpc"
  description             = "vpc for wordpress instances"
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "sub1" {
  network = google_compute_network.my-vpc.id
  name          = "sub1"
  ip_cidr_range = "192.168.24.0/24"
  region        = "us-east1" 
  private_ip_google_access = true
}

output "subnet_id" {
  value = google_compute_subnetwork.sub1.name #If you want to show output from main module, this must be decalred in child module
}