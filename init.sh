#!/usr/bin/env bash

set -e

docker-compose up -d nginx

./deploy.sh 1.0.0
./swap.sh