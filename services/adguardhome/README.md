# AdGuard Home
Defines the steps to deploy AdGuard Home with Docker/Podman Compose

> [!NOTE]
> See https://github.com/AdguardTeam/AdGuardHome/wiki/Docker

## Configuration

Set the following environment variables in `.env`:

```bash
WORK_DIR=<...>
CONF_DIR=<...>
```

## Deployment

```bash
podman compose up -d
```
