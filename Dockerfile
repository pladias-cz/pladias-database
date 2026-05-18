FROM ghcr.io/pladias-cz/database-base:main@sha256:7c118913e1e52cbc3fbc08f07a739f6a15e1d46ad2039ffff40a81cda41506e3

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/