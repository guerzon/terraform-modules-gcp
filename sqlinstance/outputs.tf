output "database_conn" {
  description = "The connection name of the Cloud SQL instance."
  value       = google_sql_database_instance.default.ip_address[0].ip_address
}

output "sql_instance_name" {
  description = "The name of the SQL instance created."
  value       = google_sql_database_instance.default.name
}