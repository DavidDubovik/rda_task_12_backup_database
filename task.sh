#! /bin/bash

DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD

mysqldump -u $DB_USER -p$DB_PASSWORD --databases ShopDB --result-file=backup.sql && \
mysql -u $DB_USER -p$DB_PASSWORD ShopDBReserve < backup.sql

mysqldump -u $DB_USER -p$DB_PASSWORD --databases ShopDB --no-create-db --result-file=backup-no-create-db.sql && \
mysql -u $DB_USER -p$DB_PASSWORD ShopDBDevelopment < backup-no-create-db.sql
