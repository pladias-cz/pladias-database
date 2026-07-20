FROM ghcr.io/pladias-cz/database-base:main@sha256:e2774cbeb6f63cb4563538d2f066f2b0f97bb64876c7b2887754d58257b0b123

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/