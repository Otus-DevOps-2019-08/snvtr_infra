terraform {
  backend "gcs" {
    bucket  = "storage-bucket-snvtr"
    prefix  = "prod-"
  }
}

