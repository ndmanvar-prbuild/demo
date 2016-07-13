#!/bin/sh

while [ false ]
do
	sleep 15
	cd $1 && git checkout prod && git pull origin prod && make setup
done