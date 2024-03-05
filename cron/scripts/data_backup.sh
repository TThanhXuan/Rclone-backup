#!/bin/sh
rclone sync /mnt/data "backup:/${servername}/data" --check-first --update -v >> /var/log/backup.log 2>&1