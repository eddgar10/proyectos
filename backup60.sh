#!/bin/bash

USER="root"
PASSWORD=""
DATABASE="basesservei"

FINAL_OUTPUT60=/home/administrador/Documentos/tablas60/`date +"3560_%d-%m-%Y_%H:%M"`_$DATABASE.sql

mysql --socket /opt/lampp/var/mysql/mysql.sock -h localhost -u $USER --password=$PASSWORD $DATABASE  -e 'show tables like "BM3560%"' | grep -v Tables_in | xargs mysqldump --socket /opt/lampp/var/mysql/mysql.sock -h localhost --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT90

gzip $FINAL_OUTPUT60

