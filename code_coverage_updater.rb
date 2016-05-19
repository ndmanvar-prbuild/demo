if `git log -n 1`.include? 'Update coverage'
	puts 'do not need to update coverage number'
else
	puts 'Updating coverage number...'
	`printenv`
	`git checkout master`
	`git pull origin master`
	`make all`
	`git config --global user.email "ndmanvar_prbuild@yahoo.com"`
	`git config --global user.name "ndmanvar-prbuild"`
	`git add coverage && git commit -m 'Update coverage number' && git push`
end
