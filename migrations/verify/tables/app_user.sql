-- Verify restapi:tables/app_user on pg

BEGIN;

SELECT
    id, first_name, last_name, email, organization_id
FROM
    app_user
WHERE
    false;

ROLLBACK;
