# Title: Analysis of the Apple Mobility Data during the COVID pandemic  

Atul Preetham  
apreetham@dons.usfca.edu

Aim: To analysis the Apple mobility data and subset the data for the region of
Texas. the data is available on : https://covid19.apple.com/mobility

### Log

* 2021-10-24: Added a function script to convert the subsetted state mobility data from a wide format to a long format using the tidyverse package
* 2021-10-05: Modified the code in the main scripts to include for loops. The loops were used to call and use the functions to iterate data for any 5 states of choice.
* 2021-10-04: Added second script to use dplyr to tally the count of cities and counties in a given state that have data from different transportation types. Created a separate function script for the same.
* 2021-09-22: Initialized git repository for the project and commit all files into it.
* 2021-09-22: A new version of the data file was downloaded and I worked to re factor the code to be more general and to allow for any state to be subset from the larger file.
* 2021-09-07: The data was originally downloaded.
