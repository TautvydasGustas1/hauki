#!/bin/bash

echo "Starting database testing: $(date)"

pg_isready -d haukidev -h psql-shared-devtest.postgres.database.azure.com -p 5432 -U haukiuserdev@psql-shared-devtest
