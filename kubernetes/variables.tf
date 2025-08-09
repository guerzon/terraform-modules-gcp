variable "cluster_name" {
  type        = string
  description = "Name for the GKE cluster"
}

variable "network" {
  type        = string
  description = "VPC where this cluster will be located"
}

variable "subnet" {
  type        = string
  description = "Subnet where this cluster will be located"
  default     = null
}

variable "location" {
  type        = string
  description = "Location of the GKE cluster. Specify a region for a regional cluster or a zone for a zonal cluster."
}

variable "cluster_description" {
  type        = string
  description = "Optional cluster description"
  default     = null
}

variable "node_pool_type" {
  type        = string
  description = "Node pool type, either 'preemptible' or 'permanent'."
  validation {
    condition     = contains(["preemptible", "permanent"], var.node_pool_type)
    error_message = "Invalid node pool type. Choose between 'preemptible' and 'permanent'."
  }
}

variable "node_pool_size" {
  type        = string
  description = "Instance size for the node pool instances"
  default     = "e2-standard-2"
}

variable "node_pool_count" {
  type        = number
  description = "Count of node instances"
  default     = 1
}

variable "node_locations" {
  type        = list(string)
  description = "List of zones where the cluster nodes will be located in"
  default     = null
}

variable "node_disk_size" {
  type        = number
  description = "Disk size of the cluster nodes"
  default     = 20
}

variable "enable_private_nodes" {
  type        = bool
  description = "Enable private nodes"
  default     = false
}

variable "deletion_protection" {
  type        = bool
  description = "Deletion protection"
  default     = true
}

variable "scopes" {
  type        = list(string)
  description = "OAuth scopes for the node pool"
  default = [
    "https://www.googleapis.com/auth/cloud-platform"
  ]
}