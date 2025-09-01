resource "google_service_account" "default" {
  account_id   = var.compute_engine_sa_name
  display_name = "Custom service account for compute engine instances"
}

resource "google_compute_address" "default" {
  count        = var.public_instance ? 1 : 0
  name         = "${var.environment}-vm-ip"
  description  = "For application deployment"
  address_type = "EXTERNAL"
  region       = var.region
}

resource "google_compute_instance" "default" {
  name         = var.server_name
  machine_type = var.instance_type
  zone         = var.zone
  network_interface {
    subnetwork = var.subnetwork
    dynamic "access_config" {
      for_each = var.public_instance ? [1] : []
      content {
        nat_ip = google_compute_address.default[0].address
      }
    }
  }
  boot_disk {
    initialize_params {
      image = var.vm_instance_image
      size  = var.vm_bootdisk_size
    }
    auto_delete = var.disk_auto_delete
  }
  lifecycle {
    ignore_changes = [attached_disk]
  }
  key_revocation_action_type = "NONE"
  metadata                   = var.vm_metadata
  service_account {
    email  = google_service_account.default.email
    scopes = var.compute_engine_sa_scopes
  }
  metadata_startup_script = var.metadata_startup_script
  tags                    = var.tags
}