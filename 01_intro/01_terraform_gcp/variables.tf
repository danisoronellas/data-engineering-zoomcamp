locals {
  project_id = "ferrous-amphora-412123"
  region     = "europe-southwest1"
}

variable "credentials" {
  default = "./keys/creds.json"
}

variable "location" {
  default = "EU"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Name"
  default     = "ferrous-amphora-412123-terra-bucket"
}

variable "gcs_storage_class" {
  default = "STANDARD"
}