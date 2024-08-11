#!/bin/bash


echo "$DockerHub_password" | docker login --username "$DockerHub_username" --password-stdin

docker tag $Docker_localimgname $DockerHub_username/$Docker_prod_tag

docker push $DockerHub_username/$Docker_prod_tag
