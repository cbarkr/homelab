# `srv`

Defines the steps to deploy various services in my homelab using Docker/Podman Compose

## Structure

Each service is defined by a directory which contains the following files:

- `compose.yml`: The [Compose file](https://docs.docker.com/reference/compose-file/) which defines each of the microservices
- `.env`: Environment variables to configure the service
- `README.md`: Documentation for the service

In addition, any service-specific config will be included in the respective directory.
