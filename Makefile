# Copyright 2021 Daniel Ortiz @daniOrtiz11 (https://github.com/daniOrtiz11). All rights reserved.

.PHONY: help
help: ## Show this help.
	@echo Welcome to wiremock-nocode service!
	@echo Prerequisites:
	@echo 1. Docker
	@echo 2. Unix based os
	@echo 3. Postman
	@echo Options:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: wiremock-down
wiremock-down: ## Command to shut down the application.
		docker-compose -f docker-compose.yml  down

.PHONY: wiremock-up
wiremock-up: ## Command to start up the application.
		docker-compose -f docker-compose.yml  up
