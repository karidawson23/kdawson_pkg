clean <- function(data, column) { 
  new <- data %>% 
    na.omit 
  return(new)
}

#this function will remove na's from the data set

