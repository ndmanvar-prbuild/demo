#!/bin/sh

while [ false ]
do
	sleep 15
	cd $1 && make setup && git pull && git checkout prod && git pull origin master
done