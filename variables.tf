variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Region where resources are created"
  type        = string
  default     = "asia-northeast1" # Tokyo region
}

variable "zone" {
  description = "Zone where resources are created"
  type        = string
  default     = "asia-northeast1-a"
}

variable "firestore_location" {
  description = "Firestore database location"
  type        = string
  default     = "asia-northeast1" # Tokyo region
}

variable "environment" {
  description = "Environment name (e.g., development, production)"
  type        = string
  default     = "development"
}

variable "app_id" {
  description = "Application ID for Firestore document"
  type        = string
  default     = "sample_app"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "Sample Application"
}

variable "app_version" {
  description = "Application version"
  type        = string
  default     = "1.0.0"
}

variable "app_status" {
  description = "Application status"
  type        = string
  default     = "active"
}
