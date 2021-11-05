#!/bin/bash

# A bash script to drive the rendering of a Rmarkdown file using some
# parameters passed in from the shell
# this script expects two command line parameters
# the first should be a US state, and the second is the raw apple mobility
# data csv file downloaded from apple.com

# Atul Preetham
# November 4th , 2021
# apreetham@dons.usfca.edu

if [ $# -eq 0 ]
then
  echo "To run the script, supply two arguements:"
  echo "The first is the name of the state to be analysed."
  echo "The second is the path to the mobility data csv file."
  exit 1
fi
Rscript -e "rmarkdown::render('Analysis.Rmd', \
            params = list(state = '$1', \
            data = '$2'))"
