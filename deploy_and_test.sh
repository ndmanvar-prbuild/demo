#!/bin/bash

# deploy and keep track of pid
echo "Deploying via Docker..."

NAME="docker_name"
# builds
echo "Building docker images: demo_test ..."
docker rm $NAME || echo "No name by image exists! Moving on..."
docker build -t demo_test .

docker run -p 8000:8000 --name $NAME demo_test &

echo "Waiting for 15 seconds to launch..."
sleep 15

# run tests
echo "Running Functional Tests using Protractor"
if ./node_modules/.bin/protractor conf.js ; then
	# shut down server
	docker stop $NAME
	# return appropriate exit code
	exit 0
else
	# shut down server
	docker stop $NAME
	# return appropriate exit code
	exit 1
fi


# need to stop