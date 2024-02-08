-- Deploy restapi:tables/app_user to pg

BEGIN;

CREATE TABLE IF NOT EXISTS app_user (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    organization_id BIGINT NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES organization(id)
);

COMMIT;
