# Script to write a function convert the mobility data for a subsetted state
# from wide to long format

# Atul Preetham
# apreetham@dons.usfca.edu
# October 20th, 2021

# Create a function to convert the mobility data for a particular state from
# wide to long
wide_to_long <- function(input_subsetted_state) {

  # loading required packages
  library(tidyr)
  library(dplyr)
  library(readr)

  # input for the function is the output from the subset_mobility_data_to_state
  # function
  state_to_convert <- read_csv(file = input_subsetted_state)

  # defensive programming check to make sure input data is correct
  defense_check <- nrow(state_to_convert)
  if (defense_check == 0) {
    stop("ERROR: check your input file")
  }
  # converting wide input data to long
  subsetted_data_long <- pivot_longer(state_to_convert, starts_with("X"),
                                      names_to = "Date",
                                      values_to = "mobility_value")
  #output
  write_csv(subsetted_data_long,
            file = paste0("output/output_mobility_data_long/",
                          tools::file_path_sans_ext(
                            basename(input_subsetted_state)),
                          "_long_format.csv"))
}
