# Immich
Defines the steps to deploy Immich with Docker/Podman Compose

> [!NOTE]
> See https://docs.immich.app/install/docker-compose/

## Configuration

Set the following environment variables in `.env`:

```bash
UPLOAD_LOCATION=<...>
DB_DATA_LOCATION=<...>
IMMICH_VERSION=<...>
DB_PASSWORD=<...>
DB_USERNAME=<...>
DB_DATABASE_NAME=<...>
```

## Deployment

```bash
podman compose up -d
```
