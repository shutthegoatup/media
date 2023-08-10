module "jellyfin" {
  source = "../modules/jellyfin"

  namespace = "media"
}

module "sonarr" {
  source = "../modules/sonarr"

  namespace = "media"
}

module "radarr" {
  source = "../modules/radarr"

  namespace = "media"
}

module "sabnzbd" {
  source = "../modules/sabnzbd"

  namespace = "media"
}
