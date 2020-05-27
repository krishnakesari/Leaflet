library(leaflet)
library(readr)

## Data from Google API

# Latest Data can be accessed through this link
# https://developers.google.com/public-data/docs/canonical/countries_csv

data <- read.csv("countries.csv")

# Base Map template include passing longitude and latitude information along with adding pop-ups

m <- leaflet(data) %>%
  addTiles() %>%  # Add default Open Street Map map tiles
  addMarkers(lng = ~longitude, lat = ~latitude, popup= ~paste('<b>', `name`))
m  # Print the map