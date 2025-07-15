variable "network" {
  type        = string
  description = "Network where this subnet will be created"
}

variable "subnets" {
  type = list(object({
    name       = string
    region     = string
    cidr_range = string
  }))
  description = "List of subnetworks to be created"
}