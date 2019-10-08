variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "public key path"
}

variable private_key_path {
  description = "private key path"
  default     = "~/.ssh/appuser"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db"
}
