if `git log -n 1`.include? 'Update coverage'
	puts 'do not need to update coverage number'
else
	puts 'Updating coverage number...'
	exec("git checkout master")
	exec("git pull origin master")
	exec("make all")
	exec("git config --global user.email \"ndmanvar_prbuild@yahoo.com\"")
	exec("git config --global user.name \"ndmanvar-prbuild\"")
	exec("git add coverage && git commit -m 'Update coverage number' && git push")
end
