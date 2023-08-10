resource "helm_release" "helm" {
  wait          = true
  wait_for_jobs = true
  name          = "sonarr"
  repository    = "https://k8s-at-home.com/charts/"
  chart         = "sonarr"
  namespace     = var.namespace
  values = [templatefile("${path.module}/values.yaml.tpl", {
    host   = var.host
    domain = var.domain
    }
  )]
}
