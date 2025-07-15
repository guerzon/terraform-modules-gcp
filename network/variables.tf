variable "environment" {
  type        = string
  description = "Environment for which the compute engine instance is being created (e.g., non-production, production)"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Auto-create subnets or not"
  default     = false
}

variable "routing_mode" {
  type        = string
  description = "Routing mode"
  default     = "REGIONAL"
}