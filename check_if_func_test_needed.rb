files_changed = `git diff --name-only origin/master`

new_feature_added = ['controllers/', 'services/', 'views/'].all? { |word| files_changed.include?(word) }

has_func_test = files_changed.include?('specs/')

if new_feature_added
	puts "\nNew feature detected!\n"
	raise "Error: Need functional test for new feature" if !has_func_test
end
