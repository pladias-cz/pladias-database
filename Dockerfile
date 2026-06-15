FROM ghcr.io/pladias-cz/database-base:main@sha256:683cfedca6b1931b7bcaad18892c0782b577aa6cdbf7c78c1b9ebd1061dd2501

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/