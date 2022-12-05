terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.0"
    }
  }
}

provider "google" {
# credentials = file("")
  region      = var.gcp_region
  project     = var.gcp_project
}

data "google_compute_zones" "available_zones" {}

resource "google_compute_address" "static-vm1" {
  name = "ipv4-address-vm1"
}

resource "google_compute_address" "static-vm2" {
  name = "ipv4-address-vm2"
}

resource "google_compute_instance" "vm1" {
  name = "vm1"
  zone = data.google_compute_zones.available_zones.names[0]
  tags = ["allow-http", "dynamic"]

  machine_type = var.vm1_machine_type

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  # Install needed dependencies
  #metadata_startup_script = "sudo yum update; sudo yum install example"

  network_interface {
    network = var.vpc_network

    access_config {
      nat_ip = google_compute_address.static-vm1.address
    }
  }
}

resource "google_compute_instance" "vm2" {
  name = "vm2"
  zone = data.google_compute_zones.available_zones.names[1]
  tags = ["allow-http", "static"]

  machine_type = var.vm2_machine_type

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  # Install needed dependencies
  #metadata_startup_script = "sudo yum update; sudo yum install example"

  network_interface {
    network = var.vpc_network

    access_config {
      nat_ip = google_compute_address.static-vm2.address
    }
  }
}

