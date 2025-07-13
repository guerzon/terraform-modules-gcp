variable "nat_gateway_name" {
  type        = string
  description = "Name for the NAT Gateway."
}

variable "router_name" {
  type        = string
  description = "Name of the router to attach the Nat gateway to."
}

variable "region" {
  type        = string
  description = "Region that this NAT gateway belongs to."
}

variable "network_tier" {
  type        = string
  description = "The network tier, options are 'PREMIUM' and 'STANDARD'."
  validation {
    condition     = can(regex("^(PREMIUM|STANDARD)$", var.network_tier))
    error_message = "Invalid network tier. Valid options are 'PREMIUM' and 'STANDARD'."
  }
  default = "PREMIUM"
}