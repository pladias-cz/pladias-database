FROM ghcr.io/pladias-cz/database-base:main@sha256:15b8d9dd829a1a23cf65fc3dce25f94ec70bc75ef5ca8ac1ceeee8d89186958b

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/