#!/bin/bash
﻿
path=/home/box/web
mkdir -p $path
apt install nginx -y
rm -rf /etc/nginx/sites-enabled/default
ln -s $path/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
#﻿sudo /etc/init.d/mysql start﻿
cd $path
gunicorn -b=0.0.0.0:8080 --workers=2 hello:app
