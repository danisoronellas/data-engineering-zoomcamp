terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = "./keys/creds.json"
  project     = "ferrous-amphora-412123"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  location      = "US"
  name          = "ferrous-amphora-412123-terra-bucket"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}