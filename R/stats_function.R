perform_anova_and_lm <- function(data, dependent_var, independent_var) {
  # Perform ANOVA
  anova_result <- anova(lm({{dependent_var}} ~ {{independent_var}}, data = data))
  
  # Perform linear regression
  lm_result <- lm({{dependent_var}} ~ {{independent_var}}, data = data)
  
  # Return a list containing the ANOVA and lm results
  return(list(ANOVA = anova_result, LM = summary(lm_result)))
}

results <- perform_anova_and_lm(data, DependentVar, IndependentVar)

print("ANOVA Results:")
print(results$ANOVA)
print("\nLinear Regression Results:")
print(results$LM)



# This function will run both an lm and anova on the dataset entered 