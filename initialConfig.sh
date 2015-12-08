#!/bin/bash

dir=`pwd`

if [ $# -lt 1 ]; then
  echo "Please specify clustername"
  exit
fi

export ESC_NAME=$1

sudo mkdir -p logstash/geoip

sudo curl -o logstash/geoip/GeoLiteCity.dat.gz  -O "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"

sudo gunzip logstash/geoip/GeoLiteCity.dat.gz


