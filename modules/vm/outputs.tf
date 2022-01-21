output "vm_name" {
    value = google_compute_instance.wp-vm.*
    sensitive = true
}

output "internal_ip" {
    value = google_compute_instance.wp-vm[0].network_interface[0].network_ip
}

output "gce_machines" {
    value = google_compute_instance.wp-vm.*  # Here * indicates that there are more than one arn as we used count as 4   
sensitive = true
}
 