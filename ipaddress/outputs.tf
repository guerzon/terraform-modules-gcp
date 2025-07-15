output "ip" {
  value       = google_compute_address.default.address
  description = "The reserved IP address"
}