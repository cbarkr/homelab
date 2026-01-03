# Caddy
Defines the steps to deploy Caddy with Docker/Podman Compose

> [!NOTE]
> See https://hub.docker.com/_/caddy/#docker-compose-example

## Configuration

Set the following environment variables in `.env`:

```bash
DATA_DIR=<...>
CONF_DIR=<...>
```

## Deployment

```bash
podman compose up -d
```
