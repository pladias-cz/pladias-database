FROM ghcr.io/pladias-cz/database-base:main@sha256:9dad7dfb553f5acf1121536bc84a6e0139ec03503b5eaad4d69cc53f2d867ca4

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/