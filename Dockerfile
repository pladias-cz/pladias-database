FROM ghcr.io/pladias-cz/database-base:main@sha256:563818cea4435c3b35862a2b5edd14222616ecb88c78afff28231d121a0a7d4a

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/