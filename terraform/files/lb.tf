resource "google_compute_target_pool" "pool" {
  name = "target-pool"

  region = var.region

  instances = [
    "europe-west1-b/reddit-app-0",
    "europe-west1-b/reddit-app-1",
  ]

  health_checks = [
    "${google_compute_http_health_check.check.name}",
  ]
}

resource "google_compute_http_health_check" "check" {
  name               = "health-check"
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}

resource "google_compute_forwarding_rule" "rule" {
  name       = "forwarding-rule"
  target     = "${google_compute_target_pool.pool.self_link}"
  port_range = "9292"
}

