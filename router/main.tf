resource "google_compute_router" "default" {
  name    = var.router_name
  network = var.network
  region  = var.region
  bgp {
    asn = var.bgp_asn
  }
}