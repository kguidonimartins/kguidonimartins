.DEFAULT_GOAL := help

.PHONY: help tests clean

all: ## run check and clean targets

serve_site:   ## run shiny app locally
	xdg-open http://127.0.0.1:4321
	Rscript -e "blogdown::serve_site()"

build_site:   ## run shiny app locally
	Rscript -e "blogdown::build_site()"

help:         ## show this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

