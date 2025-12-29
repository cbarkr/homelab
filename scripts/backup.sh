#!/bin/bash

source ./.env

src=${BACKUP_SRC}
dst=${BACKUP_DST}
log="/var/log/backup.log"

echo "Backup started at $(date)" >> "$log"

rsync -av --delete "$src" "$dst" >> "$log" 2>&1

echo "Backup completed at $(date)" >> "$log"
