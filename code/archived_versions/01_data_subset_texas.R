# Script to read in Apple mobility data from a csv file and subset the data 
# to just include rows from Texas and then write out a csv file that 
# only has that subset

# Atul Preetham
# apreetham@dons.usfca.edu
# September 7th, 2021

# Read in complete csv file
all_covid_data <- read.csv("data/raw_data/applemobilitytrends-2021-09-07.csv")

# subset the data to only include the sub region " Texas" 
texas_data <- all_covid_data[all_covid_data$sub.region == "Texas",]

# save Texas data to a new csv file in outputs
write.csv(texas_data, file = "output/texas_apple_mobility_data.csv")
 