#!/bin/bash

dir=`pwd`

if [ $# -lt 1 ]; then
  echo "Please specify clustername"
  exit
fi


sudo sed -i -- 's:_replaceme_:'"$dir"':g' ${dir}/docker-compose.yml
sudo sed -i -- 's:_clustername_:'"$1"':g' ${dir}/docker-compose.yml

sudo mkdir -p logstash/geoip

sudo curl -o logstash/geoip/GeoLiteCity.dat.gz  -O "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"

sudo gunzip logstash/geoip/GeoLiteCity.dat.gz

