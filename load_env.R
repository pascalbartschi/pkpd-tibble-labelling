
suppressPackageStartupMessages({
  library(tidyverse)
})

invisible(lapply(list.files(path = "R", pattern = "*.R", full.names = TRUE), source))
# 
# for (file in list.files(path = "R", pattern = "*.R", full.names = TRUE)) {source(file)}

