output "name_servers" {
  description = "The name servers for the DNS zone."
  value       = google_dns_managed_zone.default.name_servers
}

output "dns_zone" {
  description = "The name of the created managed zone."
  value       = google_dns_managed_zone.default.name
}