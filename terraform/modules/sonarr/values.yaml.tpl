---
ingress:
  main:
    enabled: true
    hosts: 
      - host: ${host}.${domain}
        paths:
          - path: /
            pathType: Prefix
            service:
              port: 8989

env:
  TZ: "Europe/London" 

persistence:
  config:
    enabled: true
    mountPath:   /config
    type: hostPath
    hostPath: /data/news/config/sonarr

  downloads:
    enabled: true
    mountPath: /downloads
    type: hostPath
    hostPath: /data/news/downloads

  media:
    enabled: true
    mountPath: /media
    type: hostPath
    hostPath: /data/news/media

podSecurityContext:
  runAsUser: 1000
  runAsGroup: 1000
  fsGroup: 1000
