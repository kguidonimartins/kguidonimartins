.DEFAULT_GOAL := help

.PHONY: help tests clean

all:        ## run all commands

serve_site: ## serve site locally
	xdg-open http://127.0.0.1:4321
	Rscript -e "blogdown::serve_site()"

build_site: ## build site locally
	Rscript -e "blogdown::build_site()"

help:       ## show this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

