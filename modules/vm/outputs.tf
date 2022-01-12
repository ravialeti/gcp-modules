output "vm_name" {
    value = google_compute_instance.wp-vm.name
}

output "nat_ip" {
    value = google_compute_instance.wp-vm.nat_ip
}

