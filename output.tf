output "vm1-name" {
  value = google_compute_instance.vm1.id
}
output "vm1-public_ip_address" {
  value = google_compute_address.static-vm1.address
}

output "vm2-name" {
  value = google_compute_instance.vm2.id
}
output "vm2-public_ip_address" {
  value = google_compute_address.static-vm2.address
}
