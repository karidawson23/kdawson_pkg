#' Omit the na from data set
#' 
#' Use the length, width, height of an object to calculate its density.
#' Returns density as a floating point number.
#' 
#' @param len Length of the object 
#' @param width Width of the object 
#' @param height Height of the object
#' @return density The density of the object (numeric)
#'
#'@export


clean <- function(data, column) { 
  new <- data %>% 
    na.omit 
  return(new)
}

#this function will remove na's from the data set

