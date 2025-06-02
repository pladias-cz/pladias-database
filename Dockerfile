FROM ghcr.io/pladias-cz/database-base:main@sha256:471825505e5d6fcd5b1d66eb080218274c08f96036d1fc2e31101e81ae6c683c

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/