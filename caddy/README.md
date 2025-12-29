# Caddy

Defines the Caddyfile used to proxy requests from `*.lab` domains to their respective services

> [!NOTE]
> AdGuard Home manages DNS rewrites; i.e. requests for `*.lab` domains are fulfilled by the local DNS

> [!NOTE]
> Caddy is run as a system service, thus this serves only as a backup of the latest Caddyfile
