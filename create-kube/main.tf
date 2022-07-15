
resource "google_container_cluster" "primary" {
  name     = "${var.gcp_project_id}-gke"
  location = var.gcp_region
  
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  network    = var.gcp_network_name
  subnetwork = var.gcp_sub_network
}

# Separately Managed Node Pool
resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.gcp_region
  cluster    = google_container_cluster.primary.name
  initial_node_count = 1

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.gcp_project_id
    }

    
    machine_type = "e2-micro"
    tags         = ["gke-node", "${var.gcp_project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}


