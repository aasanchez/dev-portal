DATE := $(shell date +%Y)

##@ Helpers
.PHONY: help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\n\033[1;34m${DOCKER_NAMESPACE}\033[0m\tCopyright (c) ${DATE} XXXX Development\n \n\033[1;32mUsage:\033[0m\n  make \033[1;34m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[1;34m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1;33m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Basic
.PHONY: bootstrap
bootstrap: ## is used solely for fulfilling dependencies of the project
	@./script.d/bootstrap.sh

.PHONY: setup
setup: ## is used to set up a project in an initial state
	@echo "is used to set up a project in an initial state"

.PHONY: update
update: bootstrap setup ## is used to update the project after a fresh pull
	@./script.d/update.sh

.PHONY: up
up: ## is used to start the application
	@echo "is used to start the application"

.PHONY: stop
stop: ## is used to start the application
	@echo "is used to start the application"

.PHONY: test
test: ## is used to run the test suite of the application
	@echo "is used to run the test suite of the application"

.PHONY: clean
clean: ## is used to reset the infrastructure o an inditial state
	@echo "is used to reset the infrastructure o an inditial state"
