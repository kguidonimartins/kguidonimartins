---
title: "Scripts para o terminal"
author: 'Karlo Guidoni'
date: 2020-12-10
categories:
  - til
tags:
  - til
  - R
  - terminal
description: "Como usar scripts em R no terminal"
---

O R já tem comandos que podem ser usados no terminal. Por exemplo, você pode usar `Rscript` ou `R CMD` para executar scripts e/ou comandos sem precisar iniciar uma sessão ou abrir o RStudio:

```bash
Rscript -e 'rmarkdown::render("report.Rmd")'
```

Contudo, convenhamos, é verborrágico. Eu uso bastante o `{rmarkdown}` e fora do RStudio (que oferece atalhos para compilar os documentos) é um pouco maçante tem que digitar aquele comando toda hora. Aprendi hoje que posso criar um script executável para isso. Por exemplo, em um arquivo chamado `rrender`, escrevo:

```bash
#! /usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)
rmd <- args[1]
if (!require("rmarkdown")) install.packages("rmarkdown")
rmarkdown::render(rmd)
```

Preciso tornar esse script executável com:

```bash
chmod +x rrender
```

E posso utilizá-lo assim:

```bash
./rrender report.Rmd
```

Aprendi aqui: https://github.com/gadenbuie/getcitations/blob/master/getcitations.R

Tenho outros executáveis aqui: https://github.com/kguidonimartins/dotfiles-public/tree/main/.local/bin/tools/r







