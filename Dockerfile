FROM ghcr.io/pladias-cz/database-base:main@sha256:6cc6491361ad65f9b7a65d9305b229201b0562faf002b2d942628496f99ec18e

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/