FROM ghcr.io/pladias-cz/database-base:main@sha256:8fbb5e4c61f7f2e932d5a5ec735665a4edb15bba0badfff1040b804b95c4a04a

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/