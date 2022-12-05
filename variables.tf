#Define your region at default
variable "gcp_region" {
  type        = string
  description = "region to use for provision"
  default     = "us-central1"
}

#Define your project at default
variable "gcp_project" {
  type        = string
  description = "project to use for provision"
  default     = "uep-misc"
}

#Define the machine types for both vms at default
variable "vm1_machine_type" {
  type        = string
  description = "define machine type for vm1"
  default     = "e2-micro"
}
variable "vm2_machine_type" {
  type        = string
  description = "define machine type for vm2"
  default     = "e2-micro"
}

#Define your boot disk image project/family at default
variable "boot_disk_image" {
  type        = string
  description = "define your prefered distro image"
  default     = "almalinux-cloud/almalinux-9"
}

#Define your network (vpc)
variable "vpc_network" {
  type        = string
  description = "one network to rule them all"
  default     = "default"
}

