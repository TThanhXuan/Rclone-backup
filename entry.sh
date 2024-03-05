#!/bin/sh
# rclone mount backup: /mnt/server/backup --allow-other --allow-non-empty --vfs-cache-mode writes
# start cron
/usr/sbin/crond -f -l 8