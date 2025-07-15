resource "google_compute_address" "default" {
  name         = "${var.environment}-vm-ip"
  description  = var.address_description
  address_type = var.address_type
  region       = var.region
  purpose      = var.address_purpose
}