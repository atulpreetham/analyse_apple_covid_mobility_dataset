# Goal of this script is to use the dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv
# using the relevant function in the code/function directory

# Atul Preetham
# October 3rd 2021
# apreetham@dons.usfca.edu

# load function
source("code/functions/count_cities_counties.R")

#testing function
count_cities_counties(input_subsetted_state =
                        "output/applemobilitytrends-2021-10-03_Florida.csv")
