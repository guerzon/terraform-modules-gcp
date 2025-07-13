output "cluster_id" {
  description = "The Kubernetes cluster ID."
  value       = google_container_cluster.default.id
}