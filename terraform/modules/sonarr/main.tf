resource "kubernetes_namespace" "ns" {
  metadata {
    name = var.namespace
  }
}


resource "helm_release" "helm" {
  wait          = true
  wait_for_jobs = true
  name          = "sonarr"
  repository    = "https://k8s-at-home.com/charts/"
  chart         = "sonarr"
  namespace     = kubernetes_namespace.ns.metadata.0.name
  values = [templatefile("${path.module}/values.yaml.tpl", {
    host   = var.host
    domain = var.domain
    }
  )]
}
