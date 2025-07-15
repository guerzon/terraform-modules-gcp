output "network" {
  value       = google_compute_network.default.self_link
  description = "The full self link of the created network"
}

output "network_name" {
  value       = google_compute_network.default.name
  description = "The name of the VPC network"
}