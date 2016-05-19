all: setup unit_tests functional_tests

setup:
	@echo "\n--------\nRunning setup...\n--------\n"
	npm install

unit_tests:
	@echo "\n--------\nRunning unit_tests...\n--------\n"
	@rm -rf old_coverage && cp -rf coverage old_coverage
	./node_modules/.bin/karma start karma.conf.js
	@ruby get_coverage.rb

functional_tests:
	@echo "\n--------\nRunning functional_tests...\n--------\n"
	./deploy_and_test.sh
