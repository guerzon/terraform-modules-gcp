resource "google_compute_firewall" "iap" {
  count   = var.public_instance ? 1 : 0
  name    = "fw-allow-ingress-from-iap"
  network = var.network_name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"]
  target_tags   = var.tags
}

resource "google_compute_firewall" "allow_icmp" {
  count   = var.public_instance ? 1 : 0
  name    = "${var.environment}-allow-icmp"
  network = var.network_name
  allow {
    protocol = "icmp"
  }
  source_ranges = var.allowed_ip_ranges
  target_tags   = var.tags
  priority      = 65534
  disabled      = true
}

resource "google_compute_firewall" "allow_ssh" {
  count   = var.public_instance ? 1 : 0
  name    = "${var.environment}-allow-ssh"
  network = var.network_name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = var.allowed_ip_ranges
  target_tags   = var.tags
  priority      = 65534
}
