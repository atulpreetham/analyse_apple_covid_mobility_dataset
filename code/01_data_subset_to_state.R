# Script to read in Apple mobility data from a csv file and subset the data
# to just include rows from any particular US state and then write out a
# csv file that only has that subset
# uses function in the code/function directory


# Atul Preetham
# apreetham@dons.usfca.edu
# September 22th, 2021

# load functions
source("code/functions/subset_mobility_data_to_state.R")

# testing the use of function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2021-10-03.csv",
  state_to_subset = "Florida")
