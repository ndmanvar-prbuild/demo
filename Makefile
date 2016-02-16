setup:
	@echo "\n--------\nRunning setup...\n--------\n"
	npm install

unit_tests:
	@echo "\n--------\nRunning unit_tests...\n--------\n"
	./node_modules/.bin/karma start karma.conf.js

functional_tests:
	@echo "\n--------\nRunning functional_tests...\n--------\n"
	./deploy_and_test.sh
