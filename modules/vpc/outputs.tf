output "netowrk_name" {
    value = google_compute_network.my-vpc.name
}

output "subnet_name" {
    value = google_compute_subnetwork.sub.name
}

output "network_id" {
    value = google_compute_network.my-vpc.id
}

output "subnet_id" {
    value = google_compute_subnetwork.sub.id
}