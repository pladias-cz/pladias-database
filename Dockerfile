FROM ghcr.io/pladias-cz/database-base:main@sha256:107bbafbfd9f6272bc4c3ef36f9637a70bb837116231b168a611936314f6cae2

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/