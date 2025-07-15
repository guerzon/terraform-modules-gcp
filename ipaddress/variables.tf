variable "environment" {
  type        = string
  description = "Environment for which the compute engine instance is being created (e.g., non-production, production)"
}

variable "address_description" {
  type        = string
  description = "Description of the IP address"
  default     = null
}

variable "address_type" {
  type        = string
  description = "Address type, either 'INTERNAL' or 'EXTERNAL'."
  validation {
    condition     = can(regex("^INTERNAL|EXTERNAL$", var.address_type))
    error_message = "Invalid address type. Valid options are either 'INTERNAL' or 'EXTERNAL'."
  }
  default = "EXTERNAL"
}

variable "region" {
  type        = string
  description = "The region where the IP address will be located"
}

variable "address_purpose" {
  type        = string
  description = "The purpose for this resource"
  default     = null
}