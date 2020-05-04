resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  location           = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count = 1
}

resource "google_container_node_pool" "gke-cluster-nodes" {
  name = "my-node-pool"
  location = "us-central1-a"
  cluster = google_container_cluster.gke-cluster.name
  node_count = 1

  node_config {
    preemptible = true
    machine_type = "n1-standard-2"
  }
}