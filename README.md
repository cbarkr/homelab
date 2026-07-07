# Homelab

Defines the specifications and configurations for services running in my homelab

## Goals

- Services should be run as rootless (Podman) containers
- Free and open-source software (FOSS) should always be the first choice
- Deploying services to a new environment should be fast and easy (using automated methods)

## Structure

- `bin`: Scripts and executables
- `etc`: Configuration files for system services
- `srv`: Service definitions

## Installation

> [!NOTE]
> This installation assumes the following:
> 1. The project is cloned in the user's home directory
> 2. The user exists in the `sudoers` file
> 3. The system runs `systemd`

```bash
cd $HOME
git clone https://github.com/cbarkr/homelab.git
sudo ./bin/setup.sh
./bin/install.sh
```
