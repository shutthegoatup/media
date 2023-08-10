terraform {
  backend "kubernetes" {
    secret_suffix = "media-state"
  }
}
