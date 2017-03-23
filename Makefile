all: setup static_code_anlysis unit_tests functional_tests

setup:
	@echo "\n\n\n--------\nRunning setup...\n--------\n\n"
	npm install

static_code_anlysis:
	@echo "\n\n\n--------\nRunning JSHint...\n--------\n\n"
	./node_modules/.bin/jshint controllers services views test specs *.js

unit_tests:
	@echo "\n\n\n--------\nRunning unit_tests...\n--------\n\n"
	@rm -rf old_coverage && git pull origin master && mv coverage old_coverage
	./node_modules/.bin/karma start karma.conf.js
	@ruby code_coverage_checker.rb

functional_tests:
	@echo "\n\n\n--------\nRunning functional_tests...\n--------\n\n"
	./deploy_and_test.sh

publish:
	docker build -t saucetraining/demo_test .
	docker push saucetraining/demo_test
	docker rmi saucetraining/demo_test
