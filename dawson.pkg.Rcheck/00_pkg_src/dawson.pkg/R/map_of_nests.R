#'This function will create a plot of the gps coordinates of the nests along the beach in panama 
#' 
#' @param len Length of the object 
#' @param width Width of the object 
#' @param height Height of the object
#' @return density The density of the object (numeric)
#'
#'@export
#'
#library(ggplot2)
#library(dplyr)
#library(rotl)
#library(rgbif)
#library(leaflet)
#library(tidyverse)

map_nests <- function(data, longitude, latitude){
  map <- leaflet::leaflet(data) %>% 
  addTiles() %>% 
  addMarkers(~longitude, ~latitude, popup = data$nestcode)
  
  map_nests()
}

#leaflet(no_na) %>%
#addTiles() %>% 
 # addMarkers(~decimalLongitude, ~decimalLatitude, clusterOptions = markerClusterOptions())








