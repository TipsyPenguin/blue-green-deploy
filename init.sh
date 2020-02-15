#!/usr/bin/env bash

set -e

cp .env.example .env

docker-compose up -d nginx

./deploy.sh latest
./swap.sh