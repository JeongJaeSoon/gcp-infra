# Enable gcp_services
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

  common_tags = {
    created_by = "terraform"
    purpose    = "sample-application"
  }
}
