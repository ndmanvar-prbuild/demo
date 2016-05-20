#!/bin/bash

recentCommit=`git log -n 1`
git log -n 1

if [[ "$recentCommit" =~ "Update coverage" ]]; then
    echo "do not need to run through tests, only code coverage num was updated"
else
	echo "running through tests and updating coverage numbers"
	git checkout master
	git pull origin master
	make all
	git config --global user.email "ndmanvar_prbuild@yahoo.com"
	git config --global user.name "ndmanvar-prbuild"
	(git add coverage && git commit -m 'Update coverage number' && git push) || echo 'Nothing to push!'
	(git checkout prod && git pull origin master && git push origin prod) || echo "updated prod"
fi
