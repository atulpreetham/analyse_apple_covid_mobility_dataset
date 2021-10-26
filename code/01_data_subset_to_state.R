# Script to read in Apple mobility data from a csv file and subset the data
# to just include rows from any particular US state and then write out a
# csv file that only has that subset
# uses function in the code/function directory
# inserted a for loop for subsetting data for any 5 US states


# Atul Preetham
# apreetham@dons.usfca.edu
# October 5th, 2021

# load functions
source("code/functions/subset_mobility_data_to_state.R")

# using the function to subset data of any 5 US states of choice through the
# usage of for loop
for (state_to_subset in c("California", "Texas", "Kansas",
                          "Michigan", "Florida")) {
  source("code/functions/subset_mobility_data_to_state.R")
  input_file_name <- "data/raw_data/applemobilitytrends-2021-10-03.csv"
  subset_mobility_data_to_state(input_file_name, state_to_subset)
}
