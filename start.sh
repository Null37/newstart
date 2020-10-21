#!/bin/bash
#if you want start $1 start/restart
service nginx $1 && service mysql $1 && service php7.3-fpm $1
if ["$1" = start]
then
	mysql -u root -e "CREATE USER 'null'@'localhost' IDENTIFIED BY 'root';"
	mysql -u root -e "CREATE DATABASE wordpress"
	mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'null'@'localhost' IDENTIFIED BY 'root';"
	mysql -u root wordpress < wordpress.sql
	mysql -u root phpmyadmin < phpmyadmin.sql
