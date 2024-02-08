-- Revert restapi:tables/app_user from pg

BEGIN;

DROP TABLE IF EXISTS app_user;

COMMIT;
