#' Creates a bar plot
#' 
#' Use the length, width, height of an object to calculate its density.
#' Returns density as a floating point number.
#' 
#' @param data Length of the object 
#' @param x_var Width of the object 
#' @param y_var Height of the object
#' @param title description
#' 
#' 
#' @return will show the plot
#'
#'@export
#library(ggplot2)

bar_plot <- function(data, x_var, y_var, title = "Bar Plot", x_label = NULL, y_label = NULL) {
   if (!all(is.numeric(data[[x_var]])) || !all(is.numeric(data[[y_var]]))) {
     stop("Invalid format. Both columns should be numeric.")
   }
plot <- ggplot(data, aes(x = {{x_var}}, y = {{y_var}})) +
geom_bar(stat = "identity", fill = "dodgerblue") +
labs(title = title, x = x_label, y = y_label)

print(plot)
return(plot)
}

