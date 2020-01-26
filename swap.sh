#!/usr/bin/env bash

set -e

source check-state.sh

echo "Copy {$new_state} nginx config"
cp ./docker/nginx/conf.d/nginx.conf.${new_state} ./docker/nginx/conf.d/nginx.conf

echo "Reload nginx"
docker-compose exec nginx service nginx reload