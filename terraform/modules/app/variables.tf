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

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}

variable db_internal_ip {
}