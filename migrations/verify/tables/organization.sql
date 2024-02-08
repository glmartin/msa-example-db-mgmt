-- Verify restapi:tables/organization on pg

BEGIN;

SELECT
    id, name, status
FROM
    organization
WHERE
    false;

ROLLBACK;
