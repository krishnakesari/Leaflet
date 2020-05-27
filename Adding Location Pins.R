# Map Layers can be accessed from http://leaflet-extras.github.io/leaflet-providers/preview/index.html
# I will just show how we can insert map layers to base map

library(leaflet)
library(readr)

## Data from Google API

# Latest Data can be accessed through this link
# https://developers.google.com/public-data/docs/canonical/countries_csv

data <- read.csv("countries.csv")

# Base Map template include passing longitude and latitude information along with adding pop-ups4, 

m <- leaflet(data) %>%
  addTiles() %>%  # Add default Open Street Map map tiles
  addCircleMarkers(radius = 2, color = "darkblue",
                   lng = ~longitude, lat = ~latitude, popup= ~paste('<b>', `name`)) %>%
  addProviderTiles(providers$BasemapAT.grau) 

# BasemapAT.grau provides locations with names in local languages

m  # Print the map