#!/usr/bin/env bash

set -o allexport; source .env; set +o allexport

if [[ "$IMAGE_NAME" == "" || "$EXTERNAL_HTTP_PORT" == "" ]]; then
    echo "Required environment variables are missing"
    exit 1
fi

if [[ "$DOCKER_REGISTRY_LOGIN" -ne "" && "$DOCKER_REGISTRY_TOKEN" -ne "" ]]; then
  echo "$DOCKER_REGISTRY_TOKEN" | docker login -u "$DOCKER_REGISTRY_LOGIN" --password-stdin
fi