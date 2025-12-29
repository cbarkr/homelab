# Seafile
Defines the steps to deploy Seafile with Docker/Podman Compose

> [!NOTE]
> See https://manual.seafile.com/11.0/docker/deploy_seafile_with_docker/

## Configuration

Set the following environment variables in `.env`:

```bash
DB_LOCATION=<...>
DATA_LOCATION=<...>
DB_ROOT_PASSWORD=<...>
SEAFILE_ADMIN_EMAIL=<...>
SEAFILE_ADMIN_PASSWORD=<...>
SEAFILE_SERVER_HOSTNAME=<...>
```

## Deployment

```bash
podman compose up -d
```
