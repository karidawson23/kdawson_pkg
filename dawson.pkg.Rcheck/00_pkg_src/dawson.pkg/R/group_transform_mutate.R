#' this function will be able to sort, group, and mutate data from a data set
#' 
#'  
#' @param data Name of data set you are working with 
#' @param sort_column The column of the data set you wish to clean 
#' @param group_column description
#' @param mutate_column description
#' @param summary_function = mean description
#' 
#' @return resulting data set with mean of the specified columns
#'
#'@export

sort_group_mutate <- function(data, sort_column, group_column, mutate_column, summary_function = mean) {
  result <- data %>%
    filter(!is.na(mutate_column))
    arrange({{ sort_column }}) %>%  # Sort the data by the specified column
    group_by({{ group_column }}) %>%  # Group by the specified column
    mutate(summary_stat = summary_function({{ mutate_column }}))  # Calculate summary statistic using mutate_column
  
  return(result)
}
