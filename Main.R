
# Main script to run the analysis -----------------------------------------

# Packages

library(dplyr)   # To summarize data
library(ggplot2) # To make graphs
library(stringi) # To assign random strings on data simulation

# 1 Simulating the data

source("data/data_simulation.R")

# 2 Student's t test assuming equal variances 

source("analysis/t_test2.R")

# 3 Student's t test assuming different variances

source("analysis/t_test.R")

# 4 F test to compare the variances 

source("analysis/f_test.R")

# 5 Summarize the data calculating means and standard deviations

source("analysis/data_summary.R")

# 6 Bar graph for treatments means including standard deviation,
#   point graph for treatments data and a combination of both graphs

source("analysis/theme.R")
source("analysis/bar_graph.R")
source("analysis/point_graph.R")
source("analysis/bar_point_graph.R")

# 7 Source presentation document files. You need 'rmarkdown' package.

rmarkdown::render("github_document.Rmd")
rmarkdown::render("pdf_document.Rmd")

# 8 Session Info 

capture.output(sessionInfo(), file = "Session_Info.txt")


