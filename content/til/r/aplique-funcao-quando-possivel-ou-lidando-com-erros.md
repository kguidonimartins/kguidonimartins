---
title: "Aplique uma função quando possível e lide com os erros `{purrr}`"
author: 'Karlo Guidoni'
date: 2020-12-14
categories:
  - til
tags:
  - til
  - r
  - purrr
---

Como lidar com erros quando usando `purrr::map` e amigas.

``` r
numbers <- list(1, 2, 3, "4")
purrr::map(numbers, purrr::possibly(sqrt, otherwise = NA))
```

    ## [[1]]
    ## [1] 1
    ## 
    ## [[2]]
    ## [1] 1.414214
    ## 
    ## [[3]]
    ## [1] 1.732051
    ## 
    ## [[4]]
    ## [1] NA

Ou

``` r
numbers <- list(1, 2, 3, "4")
purrr::map_dbl(numbers, purrr::possibly(sqrt, otherwise = NA))
```

    ## [1] 1.000000 1.414214 1.732051       NA


Fonte: https://www.youtube.com/watch?v=WjtXc4OXZuk
