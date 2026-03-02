FROM ghcr.io/pladias-cz/database-base:main@sha256:78032be3dde2a16a8dc48ba32e886a3d93b400731001ed13796197a8d9fb0f92

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/