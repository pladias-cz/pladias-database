FROM ghcr.io/pladias-cz/database-base:main@sha256:46a4da653737d9c59df1808804bd4e8fd51022d3383cefc612d70ecf1af23d82

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/