output "vm_name" {
    value = google_compute_instance.wp-vm.*
    }

output "internal_ip" {
    value = google_compute_instance.wp-vm[0].network_interface[0].network_ip
}

output "gce_machines" {
    value = google_compute_instance.wp-vm.* 
}
 