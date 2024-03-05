#!/bin/sh
# rclone sync /mnt/data "backup:/${servername}/data" --check-first --update -v --dry-run >> /var/log/backup.log 2>&1
if $RCLONE_BACKUP_1W
then
   ./data_backup.sh
fi