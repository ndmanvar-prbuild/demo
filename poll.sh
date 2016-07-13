#!/bin/sh

while [ false ]
do
	sleep 15
	cd $1 && make setup && git checkout prod && git pull origin prod
done