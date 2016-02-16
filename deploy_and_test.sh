#!/bin/bash

# deploy and keep track of pid
echo "Deploying via SimpleHTTPServer..."
python -m SimpleHTTPServer &
FOO_PID=$!
sleep 3

# run tests
echo "Running Functional Tests using Protractor"
if ./node_modules/.bin/protractor conf.js ; then
	# shut down server
	kill $FOO_PID
	# return appropriate exit code
	exit 0
else
	# shut down server
	kill $FOO_PID
	# return appropriate exit code
	exit 1
fi
