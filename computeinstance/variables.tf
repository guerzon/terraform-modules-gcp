variable "environment" {
  type        = string
  description = "Environment for which the compute engine instance is being created (e.g., test, dev, production)"
}

variable "compute_engine_sa_name" {
  type        = string
  description = "Name of the service account to be used by the compute engine instance"
}

variable "compute_engine_sa_scopes" {
  type        = list(any)
  description = "List of scopes for the compute engine service account"
  default = [
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append",
  ]
}

variable "server_name" {
  type        = string
  description = "Name of the compute engine instance to be created"
}

variable "vm_instance_image" {
  type        = string
  description = "Image to be used for the compute engine instance"
  default     = "ubuntu-minimal-2204-jammy-v20250521"
}

variable "vm_metadata" {
  type        = map(any)
  default     = null
  description = "Map of metadata to pass to the compute engine instance"
}

variable "metadata_startup_script" {
  type        = string
  description = "Startup script to be executed on the compute engine instance"
  default     = null
}

variable "disk_auto_delete" {
  type        = bool
  default     = true
  description = "Whether the disk will be deleted when the VM is deleted"
}

variable "subnetwork" {
  type        = string
  description = "Subnet wherein the compute engine instance will be created"
}

variable "region" {
  type        = string
  description = "Region where the compute engine instance will be created."
}

variable "zone" {
  type        = string
  description = "Zone where the compute engine instance will be created."
}

variable "instance_type" {
  type        = string
  description = "Type of the compute engine instance"
  default     = "e2-medium"
}

variable "tags" {
  type        = list(string)
  description = "List of tags to be applied to the compute engine instance"
  default     = []
}

variable "public_instance" {
  type        = bool
  description = "Add a public IP address to the instance."
  default     = false
}
