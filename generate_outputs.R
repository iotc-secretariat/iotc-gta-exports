### Libraries
pacman::p_load("knitr", "rmarkdown", "bookdown", "formatR")

# Download most recent code lists
setwd("./initialisation/")
source("./DOWNLOAD_CODE_LISTS.R")
setwd("..")

# Define year range
START_YEAR = 1950
END_YEAR   = 2023

# IOTC annual nominal catch data set ####
render("rmd/A_iotc_nominal_catch_firms_level0.Rmd",  
       output_format = "html_document2", 
       output_dir    = "outputs/"
       )

# IOTC monthly geo-referenced catch data set
# Restricted to 1x1 and 5x5 grid areas
render("rmd/B_iotc_catch_firms_level0.Rmd",  
       output_format = "html_document2", 
       output_dir    = "outputs/"
)
