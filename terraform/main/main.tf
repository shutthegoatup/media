resource "kubernetes_namespace" "ns" {
  metadata {
    name = var.namespace
  }
}

module "jellyfin" {
  source = "../modules/jellyfin"
  namespace = kubernetes_namespace.ns.metadata.0.name
}

module "sonarr" {
  source = "../modules/sonarr"
  namespace = kubernetes_namespace.ns.metadata.0.name
}

module "radarr" {
  source = "../modules/radarr"
  namespace = kubernetes_namespace.ns.metadata.0.name
}

module "sabnzbd" {
  source = "../modules/sabnzbd"
  namespace = kubernetes_namespace.ns.metadata.0.name
}
