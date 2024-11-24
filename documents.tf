# Application documents in Firestore
resource "google_firestore_document" "application" {
  project     = var.project_id
  database    = google_firestore_database.database.name
  collection  = "applications"
  document_id = var.app_id
  fields = jsonencode({
    name = {
      stringValue = var.app_name
    }
    status = {
      stringValue = var.app_status
    }
    created_at = {
      timestampValue = timestamp()
    }
    settings = {
      mapValue = {
        fields = {
          version = {
            stringValue = var.app_version
          }
          environment = {
            stringValue = var.environment
          }
        }
      }
    }
  })

  depends_on = [google_firestore_database.database]
}

# Add other documents here
# Example:
# resource "google_firestore_document" "users" { ... }
# resource "google_firestore_document" "settings" { ... }
# resource "google_firestore_document" "logs" { ... }
