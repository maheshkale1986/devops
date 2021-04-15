#!/bin/bash
#Mahesh kale
#13-06-2018

cd /var/lib/mysql/

ps=($(ls /var/lib/mysql/))


for i in "${ps[@]}"
do

mysqldump $i > $i.sql


done;

mv *.sql /backup/MYSQL_DUMPS/ 
