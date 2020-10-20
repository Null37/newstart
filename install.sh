#!/bin/sh
#update the system
apt-get update -y && apt-get upgrade -y
#now start install all we need
apt-get -y install nginx unzip && apt-get update -y && apt-get upgrade -y
apt-get install wget lsb-release -y && apt-get update -y && apt-get upgrade -y
#install mysql
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
#this for error dpkg 
apt-get install  gnupg -y && apt-get update -y && apt-get upgrade -y
#now edit defolt system to DEBIAN_FRONTEN=noninteractive if move the file in the cache you can conrol  install mysql
mv config.dat /var/cache/debconf/
mv passwords.dat /var/cache/debconf/ #pass = root
#now we can use DOBIAN_FRONTEN=noninteractive 
#if wnat to learn what is dobian_fronten https://www.cyberciti.biz/faq/explain-debian_frontend-apt-get-variable-for-ubuntu-debian/#:~:text=noninteractive%20%E2%80%93%20You%20use%20this%20mode,perfect%20frontend%20for%20automatic%20installs.

DEBIAN_FRONTEND=noninteractive dpkg -i mysql-apt-config_0.8.13-1_all.deb
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
DEBIAN_FRONTEND=noninteractive apt-get -y install  mysql-server
chown -R mysql:mysql /var/lib/mysql

#start install php 
apt-get  update -y
apt-get -y install php7.3-fpm php-mysql
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip
unzip phpMyAdmin-5.0.2-all-languages.zip
mv phpMyAdmin-5.0.2-all-languages /var/www/html/
mv /var/www/html/phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
mv /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php
mv default /etc/nginx/sites-available/



#install wordpress
cd /var/www/html/
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -fr latest.tar.gz
rm -rf wordpress/wp-config*.php
cd
#setting wordpress
mv wp-config.php /var/www/html/wordpress/.
mv /var/www/html/phpmyadmin /var/www/html/wordpress/.

#install ssl
#apt -y install golang git
#apt -y update
#apt -y upgrade
#cd /etc/nginx/
#mkdir ssl
#chmod +x ssl
#cd
#git clone https://github.com/FiloSottile/mkcert && cd mkcert
#go build -ldflags "-X main.Version=$(git describe --tags)"
#con.......

