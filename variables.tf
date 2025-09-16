variable "project_id" {
  description = "ID projektu GCP"
  type        = string
}

variable "region" {
  description = "Region GCP"
  type        = string
  default     = "europe-central2"
}

variable "zone" {
  description = "Strefa GCP"
  type        = string
  default     = "europe-central2-a"
}
