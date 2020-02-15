#!/usr/bin/env bash

set -e

source load-dotenv.sh

echo 'Check the current state'
production_state=$(curl -s http://localhost:$EXTERNAL_HTTP_PORT/deploy-state || echo 'blue')

state='blue'
new_state='green'
if [[ ${production_state} != 'blue' ]]
then
    state='green'
    new_state='blue'
fi