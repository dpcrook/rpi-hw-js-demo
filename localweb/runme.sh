#!/bin/bash -x

# assumes nodejs is already installed on a Raspbian image

first_time=0

if [[ x"${first_time}" == x'1' ]] ; then
	sudo apt-get install -y nginx
	sudo cp -v /etc/nginx/sites-available/default /etc/nginx/sites-available/default.original
	sudo -i npm install forever -g        
fi

sudo cp -v ./localweb.nginx.conf /etc/nginx/sites-available/default
sudo cp -v ./localweb.proxy.conf /etc/nginx/conf.d/proxy.conf


if [ ! -d  /var/cache/nginx ] ; then 
	sudo mkdir /var/cache/nginx
fi

# forever stuff
forever stopall
##forever start ./index.js
forever start --uid "localweb_express" forever/localweb_express.json

sudo /etc/init.d/nginx restart

forever list

