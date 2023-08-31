# Adapted from Alex's Lemonade Stand Foundation https://github.com/AlexsLemonade/refinebio-examples/blob/c43ca1575a96fea547eae0a58fd425c700bc615d/.github/workflows/style-and-sp-check.yml

# !/usr/bin/env Rscript
#
# Run spell check and save results

library(magrittr)

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

# Read in dictionary
dictionary <- readLines(file.path(root_dir, "utils", "dictionary.txt"))

# Only declare `.Rmd` or `.md` files
files <- list.files(pattern = "md$", recursive = TRUE, full.names = TRUE)

# Run spell check
sp_errors <- spelling::spell_check_files(files, ignore = dictionary) %>%
  data.frame() %>%
  tidyr::unnest(cols = found) %>%
  tidyr::separate(found, into = c("file", "lines"), sep = ":")

# Print out how many spell check errors
write(nrow(sp_errors), stdout())

# Save spell errors to file temporarily
readr::write_tsv(sp_errors, "spell_check_results.tsv")
