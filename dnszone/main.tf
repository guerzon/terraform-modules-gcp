resource "google_dns_managed_zone" "default" {
  name        = var.zone_name
  description = var.zone_description
  dns_name    = var.zone_dns_name
  visibility  = var.zone_type

  dynamic "cloud_logging_config" {
    for_each = var.zone_type == "public" ? [1] : []
    content {
      enable_logging = var.cloud_logging
    }
  }

  dynamic "dnssec_config" {
    for_each = var.zone_type == "public" ? [1] : []
    content {
      state         = var.zone_dnssec.config.state
      non_existence = var.zone_dnssec.config.state == "off" ? var.zone_dnssec.config.non_existence : null
    }
  }

  dynamic "private_visibility_config" {
    for_each = var.zone_type == "private" ? [1] : []
    content {
      dynamic "networks" {
        for_each = var.visible_networks
        content {
          network_url = networks.value
        }
      }
      dynamic "gke_clusters" {
        for_each = var.visible_gke_clusters
        content {
          gke_cluster_name = gke_clusters.value
        }
      }
    }
  }
}