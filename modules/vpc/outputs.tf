output "netowrk_id" {
    value = google_compute_network.my-vpc.id
}

output "subnet_id" {
    value = google_compute_subnetwork.sub.id
}