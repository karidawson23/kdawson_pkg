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
#'

perform_anova_and_lm <- function(data, dependent_var, independent_var){
  # Perform ANOVA
  anova_result <- anova(lm({{dependent_var}} ~ {{independent_var}}, data = data))
  
  # Perform linear regression
  lm_result <- lm({{dependent_var}} ~ {{independent_var}}, data = data)
  
  # Return a list containing the ANOVA and lm results
  return(list(ANOVA = anova_result, LM = summary(lm_result)))
}

#results <- perform_anova_and_lm(data, DependentVar, IndependentVar)

#print("ANOVA Results:")
#print(results$ANOVA)
#print("\nLinear Regression Results:")
#print(results$LM)



# This function will run both an lm and anova on the dataset entered 