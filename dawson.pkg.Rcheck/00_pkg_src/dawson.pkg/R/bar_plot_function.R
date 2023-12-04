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


bar_plot <- function(data, x, y, xlab = "X-axis Label", ylab = "Y-axis Label", title = "Bar Graph") {
  # Create a ggplot bar graph
  p <- ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_bar(stat = "identity", fill = "darkgreen", color = "black") +
    labs(x = xlab, y = ylab, title = title)
  
  # Display the ggplot bar graph
  print(p)
}


