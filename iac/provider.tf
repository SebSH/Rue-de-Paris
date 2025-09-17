terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = ">= 5.24.0"
    }
  }

  backend "gcs" {
    bucket = "rdp-tf-state"
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}