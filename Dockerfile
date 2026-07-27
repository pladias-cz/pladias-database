FROM ghcr.io/pladias-cz/database-base:main@sha256:05d2ccc671c9dbf9c8f37fb7ccf605eeb064efb95240a24d7564c0399c49856c

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/