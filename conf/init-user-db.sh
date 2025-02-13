set -e

#users
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER pladias PASSWORD 'pladias' CREATEDB LOGIN ;
    CREATE USER mapadmin WITH PASSWORD 'mapadmin';
    CREATE USER geoserver WITH PASSWORD 'geoserver';
    CREATE USER public_web WITH PASSWORD 'public_web';
    CREATE USER visitor WITH PASSWORD 'visitor';
    CREATE USER play WITH PASSWORD 'play';
    CREATE USER traitadmin WITH PASSWORD 'traitadmin';
    CREATE USER bayernflora WITH PASSWORD 'bayernflora';
    CREATE USER dal_public_web WITH PASSWORD 'dal_public_web';
    CREATE USER cevs WITH PASSWORD 'cevs';
    CREATE USER api WITH PASSWORD 'api';
EOSQL

#pladias
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE pladias   WITH
    OWNER = pladias
    ENCODING = 'UTF8'
    LC_COLLATE = 'cs_CZ.utf8'
    LC_CTYPE = 'cs_CZ.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

    GRANT ALL PRIVILEGES ON DATABASE pladias TO pladias;
    GRANT CONNECT ON DATABASE pladias TO mapadmin;
    GRANT CONNECT ON DATABASE pladias TO geoserver;
    GRANT CONNECT ON DATABASE pladias TO public_web;
    GRANT CONNECT ON DATABASE pladias TO visitor;
    GRANT CONNECT ON DATABASE pladias TO play;
    GRANT CONNECT ON DATABASE pladias TO traitadmin;
    GRANT CONNECT ON DATABASE pladias TO bayernflora;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d pladias <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS unaccent;
    CREATE EXTENSION IF NOT EXISTS tablefunc;
    CREATE EXTENSION IF NOT EXISTS pg_trgm; --https://niallburkley.com/blog/index-columns-for-like-in-postgres/
EOSQL

#dalibor
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE dalibor   WITH
    OWNER = pladias
    ENCODING = 'UTF8'
    LC_COLLATE = 'cs_CZ.utf8'
    LC_CTYPE = 'cs_CZ.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

    GRANT ALL PRIVILEGES ON DATABASE dalibor TO pladias;
    GRANT CONNECT ON DATABASE dalibor TO mapadmin;
    GRANT CONNECT ON DATABASE dalibor TO geoserver;
    GRANT CONNECT ON DATABASE dalibor TO public_web;
    GRANT CONNECT ON DATABASE dalibor TO visitor;
    GRANT CONNECT ON DATABASE dalibor TO play;
    GRANT CONNECT ON DATABASE dalibor TO traitadmin;
    GRANT CONNECT ON DATABASE dalibor TO dal_public_web;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d dalibor <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS unaccent;
    CREATE EXTENSION IF NOT EXISTS tablefunc;
    CREATE EXTENSION IF NOT EXISTS pg_trgm; --https://niallburkley.com/blog/index-columns-for-like-in-postgres/
EOSQL


#SK Pladias
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE pladias_sk   WITH
    OWNER = pladias
    ENCODING = 'UTF8'
    LC_COLLATE = 'sk_SK.utf8'
    LC_CTYPE = 'sk_SK.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

    GRANT ALL PRIVILEGES ON DATABASE pladias_sk TO pladias;
    GRANT CONNECT ON DATABASE pladias_sk TO mapadmin;
    GRANT CONNECT ON DATABASE pladias_sk TO geoserver;
    GRANT CONNECT ON DATABASE pladias_sk TO public_web;
    GRANT CONNECT ON DATABASE pladias_sk TO visitor;
    GRANT CONNECT ON DATABASE pladias_sk TO play;
    GRANT CONNECT ON DATABASE pladias_sk TO traitadmin;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d pladias_sk <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS unaccent;
    CREATE EXTENSION IF NOT EXISTS tablefunc;
    CREATE EXTENSION IF NOT EXISTS pg_trgm; --https://niallburkley.com/blog/index-columns-for-like-in-postgres/
EOSQL


#EU Pladias = cevs.ibot.cas.cz
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE cevs  WITH
    OWNER = pladias
    ENCODING = 'UTF8'
    LC_COLLATE = 'cs_CZ.utf8'
    LC_CTYPE = 'cs_CZ.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

    GRANT ALL PRIVILEGES ON DATABASE cevs TO pladias;
    GRANT ALL PRIVILEGES ON DATABASE cevs TO cevs;
    GRANT CONNECT ON DATABASE cevs TO mapadmin;
    GRANT CONNECT ON DATABASE cevs TO geoserver;
    GRANT CONNECT ON DATABASE cevs TO public_web;
    GRANT CONNECT ON DATABASE cevs TO visitor;
    GRANT CONNECT ON DATABASE cevs TO play;
    GRANT CONNECT ON DATABASE cevs TO traitadmin;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d cevs <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS unaccent;
    CREATE EXTENSION IF NOT EXISTS tablefunc;
    CREATE EXTENSION IF NOT EXISTS pg_trgm; --https://niallburkley.com/blog/index-columns-for-like-in-postgres/
EOSQL



#Elevation layer
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE geodata  WITH
    OWNER = pladias
    ENCODING = 'UTF8'
    LC_COLLATE = 'cs_CZ.utf8'
    LC_CTYPE = 'cs_CZ.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

    GRANT ALL PRIVILEGES ON DATABASE geodata TO pladias;
    GRANT CONNECT ON DATABASE geodata TO mapadmin;
    GRANT CONNECT ON DATABASE geodata TO geoserver;
    GRANT CONNECT ON DATABASE geodata TO public_web;
    GRANT CONNECT ON DATABASE geodata TO visitor;
    GRANT CONNECT ON DATABASE geodata TO play;
    GRANT CONNECT ON DATABASE geodata TO traitadmin;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d geodata <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS postgis;
EOSQL
