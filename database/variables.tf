variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}

variable "availability_type" {
  description = "The availability type of the Cloud SQL instance (e.g., REGIONAL, ZONAL)."
  type        = string
  default     = "ZONAL"
}

variable "region" {
  description = "The region where the Cloud SQL instance will be created"
  type        = string
}

variable "zone" {
  description = "The zone where the Cloud SQL instance will be created."
  type        = string
}

variable "database_version" {
  description = "The version of the database engine (e.g., POSTGRES_14, MYSQL_8_0)."
  type        = string
}

variable "machine_type" {
  description = "The machine type for the Cloud SQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "edition" {
  description = "The edition of the database (e.g., ENTERPRISE or ENTERPRISE PLUS)."
  type        = string
  default     = "ENTERPRISE"
}

variable "network_name" {
  description = "The name of the VPC network to which the Cloud SQL instance will be connected."
  type        = string
}

variable "storage_size" {
  description = "The size of the storage in GB for the Cloud SQL instance."
  type        = number
  default     = 50
}

variable "storage_autoresize" {
  type        = bool
  description = "Automatically resize disk"
  default     = false
}

variable "storage_size_maximum" {
  description = "The maximum size of the storage in GB for the Cloud SQL instance."
  type        = number
  default     = 100
}

variable "deletion_protection_enabled" {
  description = "Whether deletion protection is enabled for the Cloud SQL instance. This applies not only to Terraform but to all surfaces (ex. API, gcloud cli, etc.)"
  type        = bool
  default     = false
}

variable "backup_enabled" {
  description = "Whether backups are enabled for the Cloud SQL instance."
  type        = bool
  default     = false
}

variable "backup_start_time" {
  description = "The start time for the backup configuration in HH:MM format."
  type        = string
  default     = "00:08"
}

variable "binary_log_enabled" {
  description = "Whether binary logging is enabled for the Cloud SQL instance."
  type        = bool
  default     = false
}

variable "backup_location" {
  description = "The location for the backups of the Cloud SQL instance."
  type        = string
  default     = null
}

variable "retain_backups_on_delete" {
  description = "Whether to retain backups when the Cloud SQL instance is deleted."
  type        = bool
  default     = false
}

variable "ipv4_enabled" {
  type    = bool
  default = true
  description = "Whether or not an IPv4 public address is assigned to this instance."
}

variable "ssl_mode" {
  type    = string
  default = "ENCRYPTED_ONLY"
  description = "SSL mode enforced on the instance"
}

variable "database_name" {
  description = "The name of the database to be created in the Cloud SQL instance."
  type        = string
}

variable "database_user" {
  description = "The username for the database."
  type        = string
  sensitive   = true
}

variable "database_password" {
  description = "The password for the database user."
  type        = string
  sensitive   = true
}

variable "enable_psa" {
  type        = bool
  description = "Enable access to private Google Cloud services"
  default     = true
}

variable "authorized_networks" {
  type = list(object({
    name    = string
    address = string
  }))
  description = "Networks or IPs authorized to access the database"
  default     = []
}

variable "query_insights_enabled" {
  type        = bool
  description = "Whether or not Query Insights is enabled"
  default     = false
}

variable "query_string_length" {
  type    = number
  default = 1024
  description = "Used for query insights, maximum length of the query string stored (in bytes)."
}