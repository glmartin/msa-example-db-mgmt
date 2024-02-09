#!/bin/bash

# Make the target dynamic https://sqitch.org/docs/manual/sqitch-deploy/

: "${DB_NAME:="postgres"}"
: "${DB_PORT:="5432"}"
: "${DB_HOST:="postgres"}"
: "${DB_USERNAME:="postgres"}"
: "${DB_PASSWORD:="postgres"}"
: "${MIGRATION_ACTION:="sqitch deploy --target db:pg://${DB_USERNAME}@${DB_HOST}:${DB_PORT}/${DB_NAME}"}"

set -e

export PGPASSWORD=$DB_PASSWORD

echo "Running Database Migrations...."
echo "Migration Action: ${MIGRATION_ACTION}"
${MIGRATION_ACTION}
echo "Database Migrations Complete...."