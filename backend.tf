terraform {
  backend "gcs" {
    bucket = "my-gke-project-276119-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
