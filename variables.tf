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
