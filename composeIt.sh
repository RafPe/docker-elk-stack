#!/bin/bash
echo "Removing containers..."
docker-compose stop && docker-compose rm -fv 

echo "Rebuilding service..."
docker-compose up -d
