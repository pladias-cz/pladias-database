FROM ghcr.io/pladias-cz/database-base:main@sha256:02c7c609cafca639cddc9ca5bf231b677c2798c6ad70cfb5bdba99c9b76269d3

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/