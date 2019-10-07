variable project {
  description = "project ID"
}

variable environment {
  description = "Environment: staging/prod"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable disk_image {
  description = "Disk image"
}

variable public_key_path {
  description = "public key path"
}

variable private_key_path {
  description = "private key path"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db"
}
