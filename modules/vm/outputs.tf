output "vm_name" {
    value = google_compute_instance.wp-vm.name
}

output "network_ip" {
    value = google_compute_instance.wp-vm.network_ip
}

