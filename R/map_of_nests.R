#'This function will create a plot of the gps coordinates of the nests along the beach in panama 
#' 
#' @param data drago data set
#' @param longitude longitude column 
#' @param latitude latitude column 
#' @return interactive map of the nest locations 
#'
#'@export
#'

map_nests <- function(data, longitude, latitude){
mymap <- leaflet(drago) %>%
       addTiles() %>%
       addMarkers(lng = ~longitude, lat = ~latitude, popup = ~turtle_id)
map_nests()

}






