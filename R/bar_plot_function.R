#library(ggplot2)

create_bar_plot <- function(data, x_var, y_var, title = "Bar Plot", x_label = NULL, y_label = NULL) {

plot <- ggplot(data, aes(x = {{x_var}}, y = {{y_var}})) +
geom_bar(stat = "identity", fill = "dodgerblue") +
labs(title = title, x = x_label, y = y_label)

print(plot)
}
 

# this funtion will create a bar plot form my data
