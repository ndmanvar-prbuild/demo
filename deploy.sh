#!/bin/bash

IMAGE=$1
NAME=$2

echo "Stopping docker container with name: $NAME"
docker stop $NAME || echo "No need to docker stop..."

echo "Removing docker container with name: $NAME"
docker rm $NAME || echo "No name by image exists! Moving on..."

echo "Removing docker image: $IMAGE"
docker rmi $IMAGE

echo "Pulling docker image: $IMAGE"
docker pull $IMAGE

echo "Building docker image: $IMAGE"
docker build -t $IMAGE .

echo "Running docker image: $IMAGE with container name: $NAME"
docker run -p 8000:8000 --name $NAME -d $IMAGE
