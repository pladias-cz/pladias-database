FROM ghcr.io/pladias-cz/database-base:main@sha256:7b8e730c23e139330d931530b18a21a352786d505e3174df5bc7cc6d71959bd1

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/