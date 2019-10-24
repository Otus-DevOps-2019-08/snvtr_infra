resource "google_compute_firewall" "firewall_ssh" {
  name    = "default-allow-ssh"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = var.source_ranges
  #  target_tags   = ["reddit-app"]
}

# commented out since there is a default rule for http in CGP:
#resource "google_compute_firewall" "firewall_http" {
#  name    = "default-allow-http"
#  network = "default"
#  allow {
#    protocol = "tcp"
#    ports    = ["80"]
#  }
#  source_ranges = var.source_ranges
#  #  target_tags   = ["reddit-app"]
#}
