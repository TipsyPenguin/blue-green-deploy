#!/usr/bin/env bash

set -o allexport; source .env; set +o allexport

if [[ "$IMAGE_NAME" == "" || "$EXTERNAL_HTTP_PORT" == "" ]]; then
    echo "Required environment variables are missing"
    exit 1
fi