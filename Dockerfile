FROM ghcr.io/pladias-cz/database-base:main@sha256:2a0b38f7b9d5b7959696c193a8217bf58648487e644dc453967605db824a9b68

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/