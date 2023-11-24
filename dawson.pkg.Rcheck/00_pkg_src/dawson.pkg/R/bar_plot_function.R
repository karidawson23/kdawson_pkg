#' Creates a bar plot
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
#library(ggplot2)

create_bar_plot <- function(data, x_var, y_var, title = "Bar Plot", x_label = NULL, y_label = NULL) {

plot <- ggplot(data, aes(x = {{x_var}}, y = {{y_var}})) +
geom_bar(stat = "identity", fill = "dodgerblue") +
labs(title = title, x = x_label, y = y_label)

print(plot)
}
 

# this funtion will create a bar plot form my data
