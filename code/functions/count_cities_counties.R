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
  
  #load in the dataset from the subsetted state files
  state_to_count <- read.csv(input_subsetted_state)
  
  # starting of with dplyr chains
  count_cities_counties_by_type <- state_to_count %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()
  
  # write out the result of the dplyr chain
  write.csv(count_cities_counties_by_type,
            file = paste0("output/",
                          tools::file_path_sans_ext(
                            basename(input_subsetted_state)),
                          "_cities_counties_count.csv"))
}
