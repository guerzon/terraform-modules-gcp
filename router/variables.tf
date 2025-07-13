variable "router_name" {
  type        = string
  description = "Name of the router."
}

variable "network" {
  type        = string
  description = "Network that this router belongs to."
}

variable "region" {
  type        = string
  description = "Region that this router belongs to."
}

variable "bgp_asn" {
  type        = number
  description = "ASN number for the Cloud Router"
}