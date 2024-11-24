variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "firestore_location" {
  description = "Firestore database location"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., development, production)"
  type        = string
}

variable "app_id" {
  description = "Application ID for Firestore document"
  type        = string
}

variable "app_name" {
  description = "Application name"
  type        = string
}

variable "app_version" {
  description = "Application version"
  type        = string
}

variable "app_status" {
  description = "Application status"
  type        = string
}
