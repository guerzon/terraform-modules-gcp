resource "google_sql_database" "default" {
  name     = var.database_name
  instance = var.sql_instance_name
}

resource "google_sql_user" "default" {
  name        = var.database_user
  instance    = var.sql_instance_name
  password_wo = var.database_password
}