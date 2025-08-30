output "public_ip" {
  description = "The public IP address attached to the instance."
  value       = var.public_instance ? google_compute_address.default[0].address : null
}

output "instance_id" {
  description = "The ID of the compute engine instance."
  value       = google_compute_instance.default.id
}