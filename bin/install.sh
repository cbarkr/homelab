#!/usr/bin/env bash

# Fail fast, fail loud
set -euo pipefail

# Install systemd units
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
INSTALL_DIR="$HOME/.config/systemd/user"
mkdir -p "$INSTALL_DIR"

ln -sf "$REPO_ROOT/srv/adguardhome/adguardhome.service" \
	"$INSTALL_DIR/adguardhome.service"
ln -sf "$REPO_ROOT/srv/caddy/caddy.service" \
	"$INSTALL_DIR/caddy.service"
ln -sf "$REPO_ROOT/srv/immich/immich.service" \
	"$INSTALL_DIR/immich.service"
ln -sf "$REPO_ROOT/srv/seafile/seafile.service" \
	"$INSTALL_DIR/seafile.service"
ln -sf "$REPO_ROOT/srv/uptime-kuma/uptime-kuma.service" \
	"$INSTALL_DIR/uptime-kuma.service"

# Start systemd units
systemctl --user daemon-reload
systemctl --user enable --now \
	adguardhome.service \
	caddy.service \
	immich.service \
	seafile.service \
	uptime-kuma.service
