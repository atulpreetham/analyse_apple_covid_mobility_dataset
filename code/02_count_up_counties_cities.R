# Goal of this script is to use the dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv

# Atul Preetham
# October 3rd 2021
# apreetham@dons.usfca.edu

# load the package "dplyr"
library("dplyr")

# we would like to get a count of the number of cities and counties in a given
# state that have driving mobility data. The input to this will be the output
# of the previous script i.e the state csv files that we already subsetted.

#load in the dataset from the previous script
input_file_name <- "output/applemobilitytrends-2021-09-21_Kansas.csv"
state_data <- read.csv(input_file_name)

# starting of with dplyr chains
count_of_cities_counties_by_transportation_type <- state_data %>%
  select(geo_type, region, transportation_type) %>%
  group_by(geo_type, transportation_type) %>%
  tally()

write.csv(count_of_cities_counties_by_transportation_type,
          "output/kansas_cities_counties_counts.csv")

  
