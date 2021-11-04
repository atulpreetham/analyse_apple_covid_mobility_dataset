#!/bin/bash

# A bash script to drive the rendering of a Rmarkdown file using some
# parameters passed in from the shell

Rscript -e "rmarkdown::render('Analysis.Rmd')"
