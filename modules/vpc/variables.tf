variable "project_id" {
   description = "GCP Project Name"
  }
variable "vpc_name" { 
   description = "Network Name"
  }
variable "region" {
   description = "GCP Region"
  }
variable "vm_zone" {
   description = "GCP Zone for vm"
  }
variable "db_user" {
   description = "mysql db user name"
  }
variable "ip_cidr_range" {
   description = "Ip cider for range"
}
variable "vm_type" {
   description = "VM Machine type"
  }
variable "vm_image" {
   description = "VM Machine type"
  }
variable "vm_size" {
   description = "VM size GB"
  }
variable "tags" {
   type        = list
   description = "Network tags used for vm and subnets"
  }
