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

perform_anova_and_lm <- function(data, dependent_var, independent_var){
  anova_result <- anova(lm({{dependent_var}} ~ {{independent_var}}, data = data))
  lm_result <- lm({{dependent_var}} ~ {{independent_var}}, data = data)
  return(list(ANOVA = anova_result, LM = summary(lm_result)))
  
  print(anova_result)
  print(lm_result)
}

#results <- perform_anova_and_lm(data, DependentVar, IndependentVar)

#print("ANOVA Results:")
#print(results$ANOVA)
#print("\nLinear Regression Results:")
#print(results$LM)



# This function will run both an lm and anova on the dataset entered 