resource "google_dns_record_set" "default" {
  name = var.record_name
  type = var.record_type
  ttl  = var.record_ttl

  managed_zone = var.managed_zone

  rrdatas = var.record_content
}