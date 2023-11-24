#' Omit the N/A from a column of data
#' 
#'  
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

