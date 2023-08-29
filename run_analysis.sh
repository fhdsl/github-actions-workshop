#!/bin/bash

# This is a mock script that shows how you could have your whole analysis ran by one script call. 
## Usage: To re-run this whole analysis, 

## Run the first step
python "01-python_test.py"

## Run the second step 
Rscript "02-r_test.R"

## Run a third step
sh 03-bash_test.sh

## Run a fourth step
Rscript -e "rmarkdown::render('04-make-a-plot.Rmd')"

