#!/usr/bin/env bash

set -e

echo 'Check the current state'
production_state=$(curl -s http://localhost:9093/deploy-state || echo 'blue')

state='blue'
new_state='green'
if [[ ${production_state} != 'blue' ]]
then
    state='green'
    new_state='blue'
fi