locals {
  subnets = {
    for s in var.subnets :
    s.name => s
  }
}

resource "google_compute_subnetwork" "default" {
  network = var.network

  for_each      = local.subnets
  name          = each.value.name
  region        = each.value.region
  ip_cidr_range = each.value.cidr_range
}