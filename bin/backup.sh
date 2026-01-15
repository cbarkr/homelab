#!/bin/bash

# Activate `.env` relative to script location
dirpath="$(dirname "$0")"
envpath="$dirpath/.env"
source "$envpath"

# Set vars for backup
src=${BACKUP_SRC}
dst=${BACKUP_DST}
log="/var/log/backup.log"

echo "Backup started at $(date)" >> "$log"

# Perform the backup itself
rsync -av --delete "$src" "$dst" >> "$log" 2>&1

echo "Backup completed at $(date)" >> "$log"
