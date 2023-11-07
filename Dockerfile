FROM alpine:latest

ARG RCLONE_VERSION=1.62.2-r5

RUN apk add --no-cache \
    ca-certificates \
    curl \
    gzip \
    tar \
    zip

RUN apk add --no-cache rclone=${RCLONE_VERSION}

ENTRYPOINT ["rclone"]
