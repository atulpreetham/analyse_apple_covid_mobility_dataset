# Script to read in Apple mobility data from a csv file and subset the data 
# to just include rows from any particular US state and then write out a csv file that 
# only has that subset

# Atul Preetham
# apreetham@dons.usfca.edu
# September 22th, 2021

# create a function to subset any US state out of the full data set
# this should also create an output csv file that is named based on the state
# that is subsetted
subset_mobility_data_to_state <- function(input_file_name,
                                          state_to_subset){
  # Read in complete csv file
  all_covid_data <- read.csv(input_file_name)
  
  # subset the data to only include the rows where the sub.region column has 
  # the state name in it 
  state_data <- all_covid_data[all_covid_data$sub.region == state_to_subset,]
  
  #check that the subsetted data actually has data in it 
  if (nrow(state_data) == 0) {
    stop( "ERROR: No rows matching given state name. Check for typo")
  }
  
  # save state data to a new csv file in outputs
  write.csv(state_data, file = paste0( "output/",
                                       basename(input_file_name),
                                       "_",
                                       state_to_subset,
                                       ".csv"))
}

# testing the use of function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2021-09-21.csv",
  state_to_subset = "Californa")