# Necessary packages

if (!require("devtools")) install.packages("devtools")
if (!require("blogdown")) devtools::install_github("rstudio/blogdown")
library(blogdown)

# Install HUGO

blogdown::install_hugo()

# Create a new site

blogdown::new_site(
  dir = ".", 
  install_hugo = TRUE,
  theme = "yoshiharuyamashita/blackburn", 
  theme_example = TRUE
  )

# Serve site

blogdown::serve_site()
