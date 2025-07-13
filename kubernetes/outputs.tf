output "cluster_id" {
  description = "The Kubernetes cluster ID."
  value       = google_container_cluster.default.id
}

output "cluster_endpoint" {
  description = "The Kubernetes endpoint."
  value       = google_container_cluster.default.endpoint
}

output "cluster_ca_certificate" {
  description = "Cluster CA certificate"
  value       = google_container_cluster.default.master_auth.0.cluster_ca_certificate
}