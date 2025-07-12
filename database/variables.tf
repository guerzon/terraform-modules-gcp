variable "sql_instance_name" {
  description = "The name of the database instance where this database will be created."
  type        = string
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