# `srv`

Defines the steps to deploy various services in my homelab using Docker/Podman Compose

## Structure

Each service is defined by a directory which contains the following files:

- `compose.yml`: The [Compose file](https://docs.docker.com/reference/compose-file/) which defines each of the microservices
- `<name>.service`: The [systemd user unit file](https://www.freedesktop.org/software/systemd/man/latest/systemd.unit.htm) which defines the start/stop behaviour of the service
- `.env`: The environment variables to configure the service
- `README.md`: The documentation for the service

In addition, any service-specific config will be included in the respective directory.
