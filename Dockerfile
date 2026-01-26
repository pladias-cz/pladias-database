FROM ghcr.io/pladias-cz/database-base:main@sha256:48ac8b9773d5cba66f2c55feeabe0276bd1a14bb4b82beee943757e729814176

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/