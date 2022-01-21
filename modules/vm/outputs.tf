output "vm_name" {
    value = google_compute_instance.wp-vm.*
}

output "internal_ip" {
    value = google_compute_instance.wp-vm.*.network_interface[0].network_ip
}

output "gce_machines" {
    value = google_compute_instance.wp-vm.*.arn  # Here * indicates that there are more than one arn as we used count as 4   
}
 