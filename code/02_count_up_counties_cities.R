# Goal of this script is to use the dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv
# using the relevant function in the code/function directory

# The function was used to count the cities and counties of any 5 US states of
# choice

# Atul Preetham
# October 5th 2021
# apreetham@dons.usfca.edu

# load function
source("code/functions/count_cities_counties.R")

#testing function
count_cities_counties(input_subsetted_state =
                        "output/applemobilitytrends-2021-10-03_Florida.csv")

# using the function to tally the number of cities and counties on the
# transportation type of any 5 US states of choice using for loop

for (input_subsetted_state in
     c("output/applemobilitytrends-2021-10-03_California.csv",
       "output/applemobilitytrends-2021-10-03_Florida.csv",
       "output/applemobilitytrends-2021-10-03_Kansas.csv",
       "output/applemobilitytrends-2021-10-03_Michigan.csv",
       "output/applemobilitytrends-2021-10-03_Texas.csv")) {
  source("code/functions/count_cities_counties.R")
  count_cities_counties(input_subsetted_state)
}
