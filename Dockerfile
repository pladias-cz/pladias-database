FROM ghcr.io/pladias-cz/database-base:main@sha256:3ca22d4ebe1fa19633d842498a78d7778afad9b6185ec0859bbeeab8dfde72c3

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/