#!/bin/bash
#if you want start service and work normal use ./start start
#if you want restart all service ./satart restart
service nginx $1 && service mysql $1 && service php7.3-fpm $1
mysql -u root -e "CREATE USER 'null'@'localhost' IDENTIFIED BY 'root';"
mysql -u root -e "CREATE DATABASE wordpress"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'null'@'localhost' IDENTIFIED BY 'root';"
