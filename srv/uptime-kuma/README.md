# Uptime Kuma
Defines the steps to deploy Uptime Kuma with Docker/Podman Compose

> [!NOTE]
> See https://github.com/louislam/uptime-kuma

## Configuration

Set the following environment variables in `.env`:

```bash
DATA_DIR=<...>
```

## Deployment

```bash
podman compose up -d
```
