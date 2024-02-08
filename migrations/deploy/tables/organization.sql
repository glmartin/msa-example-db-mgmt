-- Deploy restapi:tables/organization to pg

BEGIN;

CREATE TABLE IF NOT EXISTS organization (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    status VARCHAR
);

COMMIT;
