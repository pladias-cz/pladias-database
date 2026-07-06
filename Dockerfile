FROM ghcr.io/pladias-cz/database-base:main@sha256:7252f3eaeaf22ffe394be1f1e1e8348ea5b6c46c9d0ef1c1e5766b3692e91f2c

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/