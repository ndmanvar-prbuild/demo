#!/bin/bash

IMAGE=$1
NAME=$2

docker stop $NAME || echo "No need to docker stop..."

docker rm $NAME || echo "No name by image exists! Moving on..."
docker rm $NAME || echo "No name by image exists! Moving on..."

docker rmi $IMAGE

docker pull $IMAGE

docker build -t $IMAGE .
docker run -p 8000:8000 --name $NAME $IMAGE &

echo "Waiting for 15 seconds to launch..."
sleep 15
