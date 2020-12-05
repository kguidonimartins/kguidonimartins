---
title: Documentação automática para Makefiles
author: 'Karlo Guidoni'
date: 2020-12-05
categories:
  - til
tags:
  - til
  - makefile
  - linux
---

# Por Daniel Cheng at [NYC][1]

```bash
all: commands

## commands    : show all commands
commands:
	@grep -E '^##' Makefile | sed 's/## //g'


## dothis      : do this thing
dothis:
    doingthis

## dothat      : do that thing
dothat:
    doingthat

.PHONY: clean
## clean       : remove junk things
clean:
	rm junkthings
```

Consulte a documentação com:

```bash
make
```

# Por [swcarpentry][2]

```bash
all: dothis dothat

## dothis      : do this thing
dothis:
    doingthis

## dothat      : do that thing
dothat:
    doingthat

.PHONY: clean
## clean       : remove junk things
clean:
	rm junkthings

help : Makefile
	@sed -n 's/^##//p' $<
```

Consulte a documentação com:

```bash
make help
```

# Por [marmelab][3]

```bash
.DEFAULT_GOAL := help

all: dothis dothat

dothis: ## do this thing
	doingthis

dothat: ## do that thing
	doingthat

.PHONY: clean
clean: ## remove junk things
	rm junkthings

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
```

Consulte a documentação com:

```bash
make
```

# Por [klmr][4]

```bash
.DEFAULT_GOAL := help

all: dothis dothat

## dothis      : do this thing
dothis:
	doingthis

## dothat      : do that thing
dothat:
	doingthat

.PHONY: clean
## clean       : remove junk things
clean:
	rm junkthings

help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)";\
		echo;\
		sed -ne"/^## /{h;s/.*//;:d" -e"H;n;s/^## //;td" -e"s/:.*//;G;s/\\n## /---/;s/\\n/ /g;p;}" ${MAKEFILE_LIST}|LC_ALL='C' \
		sort -f | \
		awk -F --- -v n=$$(tput cols) -v i=29 -v a="$$(tput setaf 6)" -v z="$$(tput sgr0)" '{printf"%s%*s%s ",a,-i,$$1,z;m=split($$2,w," ");l=n-i;for(j=1;j<=m;j++){l-=length(w[j])+1;if(l<= 0){l=n-i-length(w[j])-1;printf"\n%*s ",-i," ";}printf"%s ",w[j];}printf"\n";}'
```

Consulte a documentação com:

```bash
make
```

[1]: https://youtu.be/t-vY9FeIIMk?t=641

[2]: https://swcarpentry.github.io/make-novice/08-self-doc/index.html

[3]: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

[4]: https://gist.github.com/klmr/575726c7e05d8780505ajj
