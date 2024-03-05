#!/bin/sh
rclone sync /mnt/data "backup:/${servername}/$(date +"%Y_%m_%d_%H_%M_%S")/data" --check-first --update -v >> /var/log/backup.log 2>&1