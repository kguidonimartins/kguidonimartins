---
title: Revertendo a branch do repositório para um commit antigo
author: 'Karlo Guidoni'
date: '2020-12-05'
slug: introducing-til
categories:
  - til
tags:
  - til
  - linux
  - git
description: 'Como reverter o repositório para versões anteriores'
output:
  md_document:
    variant: gfm
    preserve_yaml: true
---

Primeiro, ache a *hash* do commit com `git log`.

## Reversão temporária

```bash
git checkout commithash
```

## Reversão definitiva

```bash
git revert --no-commit commithash..HEAD
git commit
```

Após `git commit`, o seu editor de texto vai abrir automaticamente. Repare que já existe uma mensagem sobre a reversão pré configurada. Você só precisa salvar!

DICA: se por acaso seu editor de texto é o vim, digite apenas `:wq`.

Fonte: https://stackoverflow.com/a/21718540/5974372



