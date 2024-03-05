FROM alpine:latest
# FROM alpine:3.3

# Install Rclone and FUSE and cron
RUN apk --no-cache add rclone fuse3 dcron

ADD cron/crontab /crontab

COPY entry.sh /entry.sh
COPY /cron/scripts/ /scripts/

RUN chmod 755 /entry.sh /scripts/*
RUN /usr/bin/crontab /crontab
CMD ["/entry.sh"]