resource "helm_release" "helm" {
  name       = "jellyfin"
  repository = "https://k8s-at-home.com/charts/"
  chart      = "jellyfin"
  namespace  = var.namespace
  values = [templatefile("${path.module}/values.yaml.tpl", {
    host   = var.host
    domain = var.domain
    }
  )]
}



