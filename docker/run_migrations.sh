#!/bin/bash

: "${DB_PASSWORD:="postgres"}"
: "${MIGRATION_ACTION:="sqitch deploy"}"

set -e

export PGPASSWORD=$DB_PASSWORD

echo "Running Database Migrations...."
echo "Migration Action: ${MIGRATION_ACTION}"
${MIGRATION_ACTION}
echo "Database Migrations Complete...."