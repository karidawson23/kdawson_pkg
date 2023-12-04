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

group_and_summarize <- function(data, selected_columns, group_columns, summary_function) {

  stopifnot(is.data.frame(data))
  
  summarized_data <- data %>%
    select({{selected_columns}}) %>%
    group_by(across({{group_columns}})) %>%
    summarize(across(everything(), summary_function, na.rm = TRUE))
  
  return(summarized_data)
}
