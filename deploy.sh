#!/usr/bin/env bash

set -e

source load-dotenv.sh

if [ "$1" = "" ]; then
    echo "Application version is required"
    exit 1
fi

echo 'Pulling new version'
docker pull $IMAGE_NAME:$1

source check-state.sh

echo "Create the $IMAGE_NAME:${new_state} image"
docker tag $IMAGE_NAME:$1 $IMAGE_NAME:${new_state}

echo "Update the ${new_state} container"
docker-compose up -d ${new_state}
