resource "google_compute_router_nat" "default" {
  name   = var.nat_gateway_name
  router = var.router_name
  region = var.region

  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  auto_network_tier                  = var.network_tier
}