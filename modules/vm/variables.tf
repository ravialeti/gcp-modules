variable "instance_name" {
   description = "GCP Zone for vm"
  }
variable "vm_type" {
   description = "VM Machine type"
  }
variable "vm_zone" {
   description = "GCP Zone for vm"
  }
#variable "instance_tags" {
#   type        = list
#   description = "Network tags used for vm and subnets"
#  }
variable "vm_image" {
   description = "VM Machine type"
  }
variable "vm_size" {
   description = "VM size GB"
  }
variable "subnet_name" {
   description = "Subnet name from vpc module"
}

variable "num_instances" {
   description = "Subnet name from vpc module"
}


