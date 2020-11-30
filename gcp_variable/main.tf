variable "location" {
  description = "The location."
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = var.location
  initial_node_count       = 1
  enable_legacy_abac = true

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

# Modified [main.tf] on [2020-11-30 23:03:06.920172]