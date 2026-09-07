FROM ghcr.io/pladias-cz/database-base:main@sha256:bcc4428322ae95594e1d98af80ca0da4f44288e293e335017473749f35daafcf

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/