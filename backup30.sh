#!/bin/bash

USER="root"
PASSWORD=""
DATABASE="basesservei"

FINAL_OUTPUT30=/home/administrador/Documentos/tablas30/`date +"2535_%d-%m-%Y_%H:%M"`_$DATABASE.sql

mysql --socket /opt/lampp/var/mysql/mysql.sock -h localhost -u $USER --password=$PASSWORD $DATABASE  -e 'show tables like "BM2535%"' | grep -v Tables_in | xargs mysqldump --socket /opt/lampp/var/mysql/mysql.sock -h localhost --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT30

gzip $FINAL_OUTPUT30

