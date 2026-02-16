FROM ghcr.io/pladias-cz/database-base:main@sha256:3ebcd494ab7643710fdf08a528615e41e584dccc7f1b2d456924b85333ddd214

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/