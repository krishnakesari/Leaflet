 
library(leaflet)
library(readr)

data <- read.csv("countries.csv")

colnames(data)
 
getcolor <- function(data) {
        sapply(data$country, function(country) {
          if (country == 'US'){ 
            'red' 
          } else if (country == 'FR') {
            'gray'
          } else {
            'blue'
          } })
      }

icons <- awesomeIcons(
          icon = ' ',
          library = 'ion',
          markerColor = getcolor(data)
        )
        

m <- leaflet(data) %>%
  addTiles() %>%  
  addCircleMarkers(radius = 2, color = getcolor(data),
                   lng = ~longitude, lat = ~latitude, popup= ~paste('<b>', `name`)) %>%
  addProviderTiles(providers$BasemapAT.grau) 

m  # Print the map