library(leaflet)
library(dplyr)
library(tidyverse)

m <- leaflet() %>%
  addTiles() %>%  # Add default Open Street Map map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m  # Print the map