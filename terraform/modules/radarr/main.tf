resource "helm_release" "helm" {
  name       = "radarr"
  repository = "https://k8s-at-home.com/charts/"
  chart      = "radarr"
  namespace  = var.namespace
  values = [templatefile("${path.module}/values.yaml.tpl", {
    host   = var.host
    domain = var.domain
    }
  )]
}

