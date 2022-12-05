#Define your firewall rule 
resource "google_compute_firewall" "allow-rules" {
  name    = "allow-rules"
  network = var.vpc_network

  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  target_tags   = ["allow-http"]
  source_ranges = ["0.0.0.0/0"]
  priority      = 1000
  direction     = "INGRESS"
}
