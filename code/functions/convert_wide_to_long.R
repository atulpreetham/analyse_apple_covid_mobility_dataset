# Script to write a function convert the mobility data for a subsetted state
# from wide to long format

# Atul Preetham
# apreetham@dons.usfca.edu
# October 20th, 2021

# Create a function to convert the mobility data for a particular state from
# wide to long
convert_wide_to_long <- function(input_subsetted_state) {

  # required packages
  library(dplyr)
  library(tidyr)

  # input for the function is subsetted state data
  state_to_convert <- readr::read_csv(input_subsetted_state)

  # defensive programming check to make sure input data is correct
  defense_check <- nrow(state_to_convert)
  if (defense_check == 0) {
    stop("ERROR: check your input file")
  }

  # converting data from wide to long
  state_data_long <- pivot_longer(state_to_convert,
                                  cols = -c(geo_type, region,
                                            transportation_type,
                                            alternative_name,
                                            `sub-region`, country),
                                  names_to = "date",
                                  values_to = "rel_mobility")

  # output the above in relevant format in csv
  readr::write_csv(state_data_long,
                   paste0("output/output_mobility_data_long/",
                          tools::file_path_sans_ext(
                            basename(input_subsetted_state))
                          , "_long_format.csv"))

  # returning the long data
  return(state_data_long)
}
