# GitHub Actions Workshop

This GitHub repository is sandbox of Github Actions to play with for the purposes of a workshop (or independent learning)

See the slides here to be guided through this activity.

## Files and set up

This repository contains some mock scripts and files to mimic what a code analysis repository might look like so GitHub actions within this context can be demonstrated.

### Data folder

The data folder represents where data might be kept for an analysis. Often times files that are too big to be stored on GitHub might need to be stored elsewhere and downloaded by a data download script.

### Mock analysis files

- `run_analysis.sh` - this script represents a main script that can be called to re-run the entire analysis.
- `01-python_test.py` - this script represents a python script that is called by `run_analysis.sh`. In order for it to be run by GitHub actions, the Docker image or other environment would need to have Python installed.
- `02-r_test.R` - this script represents an R script that is also called by `run_analysis.sh`. In order for it to be run by GitHub actions, the Docker image or other environment would need to have R installed.
- `03-make-a-plot.Rmd` - This file is an R Markdown file, which is commonly used for data analysis notebook output (it creates the `03-make-a-plot.html` when run). In order for it to be run by GitHub actions, the Docker image or other environment would need to have R and RMarkdown and other packages used by the Rmd installed.
