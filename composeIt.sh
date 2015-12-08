#!/bin/bash

echo "setting env variables"
export nginx1=$1
export nginx2=$2

echo "Removing containers..."
docker-compose stop && docker-compose rm -fv 

echo "Rebuilding service..."
docker-compose up -d
