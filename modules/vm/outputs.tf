output "vm_name" {
    value = google_compute_instance.wp-vm.name
}

output "internal_ip" {
    value = google_compute_instance.wp-vm.network_interface[0].network_ip
}

