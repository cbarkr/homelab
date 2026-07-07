#!/usr/bin/env bash

# Remove CUPS
systemctl stop cups
systemctl disable cups
apt remove --purge -y cups
apt -y autoremove

# Install SSH server
apt install -y openssh-server

# Install UFW
apt install -y ufw

# Install Fail2Ban
apt install -y fail2ban

# Install Cockpit
apt install -y cockpit cockpit-storaged cockpit-networkmanager cockpit-podman

# Install Podman Compose
apt install -y podman-compose

# Configure UFW
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh # SSH
ufw allow 9090 # Cockpit
ufw allow http # HTTP (root)
ufw allow https # HTTPS (non-root)
ufw allow 53 # DNS (root)
ufw allow 4443 # HTTPS (non-root)
ufw allow 5300 # DNS (non-root)
ufw allow 8000 # HTTP (non-root)
ufw allow 8080 # Adguard client
ufw allow 8081 # Seafile client
ufw allow 8082 # Immich client
ufw allow 8083 # Uptime Kuma client

# Configure NAT rules
# These are used to forward traffic from rootful ports to rootless ports
echo "*nat
:PREROUTING ACCEPT [0:0]
:POSTROUTING ACCEPT [0:0]
-A PREROUTING -p udp -m udp --dport 53 -j REDIRECT --to-ports 5300
-A PREROUTING -p tcp -m tcp --dport 53 -j REDIRECT --to-ports 5300
-A PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 8000
-A PREROUTING -p tcp -m tcp --dport 443 -j REDIRECT --to-ports 4443
-A PREROUTING -p udp -m udp --dport 443 -j REDIRECT --to-ports 4443
COMMIT" | tee -a /etc/ufw/before.rules > /dev/null

# Enable UFW
ufw enable
