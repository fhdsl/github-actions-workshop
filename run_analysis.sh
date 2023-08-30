#!/bin/bash

# This is a mock script that shows how you could have your whole analysis ran by one script call.
## Usage: To re-run this whole analysis, go to bash and

## Run the first step
python3 "01-python_test.py"

## Run the second step
Rscript "02-r_test.R"

## Run a third step
Rscript -e "rmarkdown::render('03-make-a-plot.Rmd')"
