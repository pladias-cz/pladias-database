FROM ghcr.io/pladias-cz/database-base:main@sha256:f02ea73db678430bd2be5e292f6df88bf5d5662ad514ff255161e82fe208108b

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/