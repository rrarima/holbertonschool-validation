build: ## Build awesome-api
	go build -o awesome-api

run: ## Run awesome-api application
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop awesome-api application
	kill $$(pgrep awesome-api) || true

clean: stop ## Clean awesome-api application and log
	rm -f awesome-api awesome-api.log

test: ## Test current connection
	@status=$$(curl -s -o /dev/null -w "%{http_code}\n" http://localhost:9999 || true); \
	if [ $$status -eq 200 ]; then \
		response=$$(curl -s http://localhost:9999/health || true); \
		echo $$response; \
		if [ "$$response" != "TESTOK" ] && [ "$$response" != "ALIVE" ]; then \
			echo "Test failed. Unexpected response."; \
			exit 1; \
		fi; \
	elif [ $$status -eq 404 ]; then \
		echo $$status; \
	else \
		echo "Test failed. Application not running or not accessible."; \
		exit 1; \
	fi

help: ## Display what each command does
	cat Makefile | grep '##' | tr -d '##' | head -n -1
