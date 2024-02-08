-- Revert restapi:tables/organization from pg

BEGIN;

DROP TABLE IF EXISTS organization;

COMMIT;
