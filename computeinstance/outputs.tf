output "public_ip" {
  description = "The public IP address attached to the instance."
  value       = var.public_instance ? google_compute_address.default[0].address : null
}