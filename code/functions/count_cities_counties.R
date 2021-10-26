# Goal of this script is to use the dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv

# Atul Preetham
# October 3rd 2021
# apreetham@dons.usfca.edu

# creating a function to tally the cities and counties of any given state
# with the transportation type data from Apple

count_cities_counties <- function(input_subsetted_state) {

  # load the package "dplyr"
  library("dplyr")

  # we would like to get a count of the number of cities and counties in a given
  # state that have transportation type mobility data. The input to this will
  # be the output of the previous script i.e the state csv files that we
  # already subsetted.

  # load in the dataset from the subsetted state files
  state_to_count <- readr::read_csv(input_subsetted_state)

  # defensive programming check to make sure input data is correct
  defense_check <- nrow(state_to_count)
  if (defense_check == 0) {
    stop("ERROR: check your input file")
  }
  # starting of with dplyr chains
  count_cities_counties_by_type <- state_to_count %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()

  # write out the result of the dplyr chain
  readr::write_csv(count_cities_counties_by_type,
            file = paste0("output/output_mobility_data_tallied/",
                          tools::file_path_sans_ext(
                            basename(input_subsetted_state)),
                          "_cities_counties_count.csv"))
  return(count_cities_counties_by_type)
}
