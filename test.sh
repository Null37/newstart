#!/bin/bash
###########
docker build -t null .
docker run -p 80:80 -p 443:443 -it null
