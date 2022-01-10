resource "google_compute_instance" "wp-vm" {
  name          = "wp-instance"
  machine_type  = var.vm_type
  zone          = var.vm_zone
  tags          = var.tags
  metadata_startup_script = templatefile("wp-init.sh",
   {
    DB_USERNAME = var.db_user
    DB_PASSWORD = random_password.this.result
    DB_HOST     = google_sql_database_instance.mysql.private_ip_address
  })

  boot_disk {
    initialize_params {
     image = var.vm_image
     size  = var.vm_size
    }
  }
   network_interface {
    subnetwork = "${google_compute_subnetwork.private.name}"
    access_config {
      // Ephemeral IP
    }
  }
  allow_stopping_for_update = true
}
