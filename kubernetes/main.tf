resource "google_service_account" "default" {
  account_id   = "gke-service-account"
  display_name = "Service account for GKE"
}

resource "google_project_iam_member" "default" {
  for_each = toset(var.roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.default.email}"
}

resource "google_container_cluster" "default" {
  name        = var.cluster_name
  description = var.cluster_description

  network    = var.network
  subnetwork = var.subnet != null ? var.subnet : null
  location   = var.location
  # node locations for regional clusters
  node_locations = var.node_locations

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = var.deletion_protection
}

resource "google_container_node_pool" "preemptible" {
  count      = var.node_pool_type == "preemptible" ? 1 : 0
  name       = "preemptible-nodepool"
  cluster    = google_container_cluster.default.id
  node_count = var.node_pool_count
  node_config {
    preemptible     = true
    machine_type    = var.node_pool_size
    service_account = google_service_account.default.email
    oauth_scopes    = var.scopes
    disk_size_gb    = var.node_disk_size
  }
  network_config {
    enable_private_nodes = var.enable_private_nodes
  }
}