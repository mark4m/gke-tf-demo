provider "google" {
  credentials = file("./creds/serviceaccount.json")
  project     = "my-gke-project-276119"
  region      = "us-central1"
}
