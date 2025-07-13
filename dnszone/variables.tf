variable "zone_name" {
  type        = string
  description = "Name for the hosted zone."
}

variable "zone_dns_name" {
  type        = string
  description = "The DNS name suffix of the zone."
}

variable "zone_description" {
  type        = string
  description = "Description of the zone."
  default     = null
}

variable "zone_type" {
  type        = string
  description = "Specifies whether the zone is a private or public zone."
  validation {
    condition     = can(regex("^(public|private)$", var.zone_type))
    error_message = "Invalid zone type. Options are: 'public' and 'private'."
  }
  default = "public"
}

variable "zone_dnssec" {
  type = map(object({
    state         = string
    non_existence = string
  }))
  validation {
    condition = alltrue([
      can(regex("^(on|off|transfer)$", var.zone_dnssec.config.state)),
      can(regex("^(nsec|nsec3)$", var.zone_dnssec.config.non_existence))
    ])
    error_message = "Invalid DNSSEC configuration. Check documentation for acceptable values."
  }
  description = "The DNSSEC state of the zone. Possible values are: 'on', 'off', and 'transfer'."
  default = {
    config = {
      state         = "on"
      non_existence = "nsec3"
    }
  }
}

variable "cloud_logging" {
  type        = bool
  description = "Enable logging of DNS queries to Cloud Logging"
  default     = false
}

variable "visible_networks" {
  type        = list(string)
  description = "List of visible networks for private zones."
  default     = []
}

variable "visible_gke_clusters" {
  type        = list(string)
  description = "List of visible GKE clusters for private zones."
  default     = []
}