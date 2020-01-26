#!/usr/bin/env bash

set -e

if [ "$1" = "" ]; then
    echo "Application version is required"
    exit 1
fi

echo 'Pulling new version'
docker pull tipsypenguin/hello-world:$1

source check-state.sh

echo "Create the app:${new_state} image"
docker tag tipsypenguin/hello-world:$1 tipsypenguin/hello-world:${new_state}

echo "Update the ${new_state} container"
docker-compose up -d ${new_state}
