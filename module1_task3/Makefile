build: ## Build new dist
	hugo

clean: ## Clean dist dir
	rm -rf dist

post: ## Create new MarkDown
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: "$(POST_NAME)"/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Display what each command does
	cat Makefile | grep '##' | tr -d '##' | head -n -1