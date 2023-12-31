#' Omit the N/A from a specific column of data set
#' 
#'  
#' @param data Name of data set you are working with 
#' @param column The column of the data set you wish to clean 
#' 
#' @return Data frame with no NAs 
#'
#'@export


clean <- function(data, column) { 
  new_drago <- data %>% 
    na.omit 
  if (sum(is.na(new_drago)) == 0){
  return(new_drago)
   } else {
    print("NAs are still at large! ")
  }
}

