FROM ghcr.io/pladias-cz/database-base:main@sha256:4142199318811378e00c132c99209c6151534272104502c8e8239f43f490a304

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/