# Enable required GCP APIs
resource "google_project_service" "gcp_services" {
  for_each = toset([
    "firestore.googleapis.com",            # Firestore API
    "cloudresourcemanager.googleapis.com", # Cloud Resource Manager API
    "serviceusage.googleapis.com"          # Service Usage API
  ])

  service            = each.key
  disable_on_destroy = false
}

# Project-level configurations and shared resources can be defined here
locals {
  common_labels = {
    environment = var.environment
    managed_by  = "terraform"
    project     = var.project_id
  }
}

# Firestore Module
module "firestore" {
  source = "./modules/firestore"

  project_id         = var.project_id
  environment        = var.environment
  firestore_location = var.firestore_location

  # Application specific variables
  app_id      = var.app_id
  app_name    = var.app_name
  app_version = var.app_version
  app_status  = var.app_status

  depends_on = [google_project_service.gcp_services]
}

# Add other modules here(e.g., storage, hosting)
# module "storage" { ... }
# module "hosting" { ... }
