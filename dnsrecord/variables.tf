variable "managed_zone" {
  type        = string
  description = "Managed zone in which this record set will reside."
}

variable "record_name" {
  type        = string
  description = "DNS name this record set will apply to."
}

variable "record_type" {
  type        = string
  description = "DNS record type."
}

variable "record_content" {
  type        = list(string)
  description = "The list of string data for this record."
  default     = []
}

variable "record_ttl" {
  type        = number
  description = "The TTL (time-to-live) value for the record. Default is 300 (5 minutes)."
  default     = 300
}