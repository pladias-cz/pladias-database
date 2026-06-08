FROM ghcr.io/pladias-cz/database-base:main@sha256:1066d44fa3f9257aa67336a72cf0e397ac710dda4a1ad4cfb8a4a0da3772b3c6

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/