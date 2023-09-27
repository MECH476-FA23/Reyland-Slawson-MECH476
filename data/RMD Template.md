---
title: ''
subtitle: '' 
author: 'Genevieve Reyland-Slawson'
date: '`r format(Sys.time(), "%d %B, %Y")`'
output: html_document
---

```{r global-options, include = FALSE}
# set global options for figures, code, warnings, and messages
knitr::opts_chunk$set(fig.width = 6, fig.height = 4, fig.path = "../figs/",
                      echo = TRUE, warning = FALSE, message = FALSE)
```

``` {r installing the packages}

install.packages("ggplot2") 
library(ggplot2)
library(tidyverse)

```