#!/bin/bash

openssl req -x509 -newkey rsa:2048 -days 365 -nodes -keyout null.key -out null.crt -subj "/C=MR/ST=maroc/L=null/O=1337/OU=1337/CN=1337/emailAddress=saadllah@null.com"
