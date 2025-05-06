#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <backup_file>"
  exit 1
fi

BACKUP_FILE=$1

docker exec -i mysql-db mysql -u root -ppassword liverpool_fc < $BACKUP_FILE

echo "Restoration completed from $BACKUP_FILE"
