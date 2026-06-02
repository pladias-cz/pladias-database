FROM ghcr.io/pladias-cz/database-base:main@sha256:d75c2adb1a933c962d78533190ea84f2a35c8e0b4af4d9435d7361fa1137a81b

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/