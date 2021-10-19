#!/bin/bash

USER="root"
PASSWORD=""
DATABASE="basesservei"

FINAL_OUTPUT90=/home/administrador/Documentos/tablas90/`date +"6090_%d-%m-%Y_%H:%M"`_$DATABASE.sql

mysql --socket /opt/lampp/var/mysql/mysql.sock -h localhost -u $USER --password=$PASSWORD $DATABASE  -e 'show tables like "BM6090%"' | grep -v Tables_in | xargs mysqldump --socket /opt/lampp/var/mysql/mysql.sock -h localhost --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT90

gzip $FINAL_OUTPUT90
