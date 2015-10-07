#!/usr/bin/env bash

echo "Initializing database WSO2 database ($POSTGRES_DB)"
psql --username="$POSTGRES_USER" -d "$POSTGRES_DB" -f /opt/wso2/dbscripts/postgresql.sql
psql --username="$POSTGRES_USER" -d "$POSTGRES_DB" -f /opt/wso2/dbscripts/apimgt/postgresql.sql
