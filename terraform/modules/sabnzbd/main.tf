resource "helm_release" "helm" {
  name       = "sabnzbd"
  repository = "https://k8s-at-home.com/charts/"
  chart      = "sabnzbd"
  namespace  = var.namespace
  values = [templatefile("${path.module}/values.yaml.tpl", {
    host   = var.host
    domain = var.domain
    }
  )]
}

