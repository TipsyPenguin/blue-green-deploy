#!/usr/bin/env bash

set -e

source load-dotenv.sh
source check-state.sh

echo "Copy {$new_state} nginx config"

envsubst '\$INTERNAL_PORT' < "./docker/nginx/conf.d/nginx.conf.${new_state}" > "./docker/nginx/conf.d/nginx.conf"

echo "Reload nginx"
docker-compose exec nginx service nginx reload