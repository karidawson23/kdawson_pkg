#' Perform data analysis on data set to test for significance 
#' 
#' 
#' @param data Length of the object 
#' @param dependent_var Width of the object 
#' @param independent_var Height of the object
#' 
#' @return density The density of the object (numeric)
#'
#'@export
#'

# Function to run a normality test for the interaction between two columns of a data frame
normality_test <- function(data, col1, col2) {
  # Check if the specified columns exist in the data frame
  if (!all(c(col1, col2) %in% names(data))) {
    stop("Specified columns not found in the data frame.")
  }
  
  # Create the interaction term
  interaction_term <- data[[col1]] * data[[col2]]
  
  # Run the Shapiro-Wilk test for the interaction term
  result_interaction <- shapiro.test(interaction_term)
  
  # Print the test results
  cat("Shapiro-Wilk Normality Test for Interaction between Columns '", col1, "' and '", col2, "':\n")
  cat("Test Statistic =", result_interaction$statistic, "\n")
  cat("p-value =", result_interaction$p.value, "\n")
  
  # Interpret the results for the interaction term
  cat("\nInterpretation:\n")
  if (result_interaction$p.value < 0.05) {
    cat("Interaction term is not normally distributed.\n")
  } else {
    cat("Interaction term appears to be normally distributed.\n")
  }
  
  # Return the test results
  return(result_interaction)
}

