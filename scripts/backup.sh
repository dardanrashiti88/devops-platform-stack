#!/bin/bash

DATE=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR

docker exec mysql-db mysqldump -u root -ppassword liverpool_fc > $BACKUP_DIR/db_backup_$DATE.sql

echo "Backup completed at $BACKUP_DIR/db_backup_$DATE.sql"
