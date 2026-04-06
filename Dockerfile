FROM ghcr.io/pladias-cz/database-base:main@sha256:61db39a51bdf1ed247337fe48b29d8ca44b7bd1578f97fd00fba8e47809359dd

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/pladias-database
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias apps"

COPY conf/init-user-db.sh /docker-entrypoint-initdb.d/