lint: ## lint
	hadolint Dockerfile || true
	markdownlint -f DEPLOY.md README.md || true

build: ## Build awesome-api
	docker run --rm --tty --volume=`pwd`:/app --workdir=/app awesome:build sh -c "chmod +x ./setup.sh &&./setup.sh make lint \
	&& go mod tidy \
	&& make check \
	&& hugo \
	&& go build -o awesome-api"

run: ## Run awesome-api application
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop awesome-api application
	kill $$(pgrep awesome-api) || true

post: ## Create new MarkDown
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: "$(POST_NAME)"/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean: stop ## Clean awesome-api application and log
	rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out go*
	rm -rf ./dist

test: ## Test current connection
	docker run --rm --tty --volume=`pwd`:/app --workdir=/app golang:1.15.8-buster sh -c "./setup.sh make unit-tests \
	&& make integration-tests \
	&& make validate"

unit-tests: ## Run tests to check for HelloHandler coverage
#	hugo
#	touch coverage-units.out
	docker run --rm --tty --volume=`pwd`:/app --workdir=/app golang:1.15.8-buster go test -v  -short -coverprofile=coverage-units.out
integration-tests: ## Run tests to check integrations coverage
#	hugo
#	touch coverage-integrations.out
	docker run --rm --tty --volume=`pwd`:/app --workdir=/app golang:1.15.8-buster go test -v -coverprofile=coverage-integrations.out

check: ## Check markdown files
	markdownlint ./content/posts/*.md
	find content -name \*.md -print0 | xargs -0 -n1 markdown-link-check

validate: ## Validate HTML with W3C Validator
	python3 ./w3c_validator.py ./dist/index.html || true

go-build:	## Build API library
	go mod init github.com/holbertonschool-validation/tree/main/module3_task2/awesome-api
	go get github.com/gorilla/mux
	go build

hugo-build: check ## Build go hugo website
	hugo -d dist/

package:	## Create awesome-website.zip that includes the awesome-api and dist directory
	zip -FSr awesome-website.zip . -i dist/ awesome-api

build-docker: ## Build Docker image
	docker build -t awesome:build ./.build

.SILENT:
help: ## Display what each command does
	cat Makefile | grep '##' | tr -d '##' | head -n -1
