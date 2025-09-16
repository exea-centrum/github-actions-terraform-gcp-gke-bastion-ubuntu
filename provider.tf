provider "google" {
  credentials = file("YOUR_SERVICE_ACCOUNT_KEY.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
