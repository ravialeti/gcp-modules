output "vm_name" {
    value = google_compute_instance.wp-vm.id
}

output "public_ip" {
    value = google_compute_instance.wp-vm.network_ip
}