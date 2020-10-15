from debian:buster

workdir /root/
copy . /root/.
run chmod +x install.sh && ./install.sh
#ENTRYPOINT service nginx start && service mysql start && service php7.3-fpm start && mysql -u root -e "CREATE DATABASE phpmyadmin" && \
#mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'null'@'localhost' IDENTIFIED BY 'null';" && tail -f /dev/null
