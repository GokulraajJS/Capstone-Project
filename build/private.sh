#!/bin/bash

Token=$(curl -s -H "Content-Type: application/json" -X POST -d "{\"username\": \"${DockerHub_username}\", \"password\": \"${DockeHub_password}\"}" https://hub.docker.com/v2/users/login/ | jq -r .token)

curl -s -H "Authorization: JWT ${Token}" -H "Content-Type: application/json" -X PATCH -d '{"is_private": true}' https://hub.docker.com/v2/repositories/${DockerHub_username}/${Docker_prod_tag}/
