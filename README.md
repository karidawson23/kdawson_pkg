# SeaTurtleDataProcessor R Package

## An R package for processing sea turtle nesting data

## Overview

The SeaTurtleDataProcessor R package is designed to facilitate the analysis and processing of sea turtle data. This package provides a set of functions to handle various tasks related to sea turtle research, including data cleaning, transformation, data analysis and visualization. Whether you are working with satellite tracking data, nesting site records, or other types of sea turtle data, this package aims to streamline your workflow.This is for sea turtle biologists. This plots GPS coordinates, shows the relationship between different bio markers and reproductive output and carapace size. It can even show individual turtle nesting data. 

# Packages that you will need:
```
library(tidyverse)
library(ggplot2)
```

## Installation

You can install the SeaTurtleDataProcessor package from GitHub using the devtools package. Run the following commands in your R console:

```
install.packages("remotes")
library(remotes)

install.packages("googlesheets4")
library(googlesheets4)

remotes::install_github("karidawson23/dawson_pkg")
install.packages("dawson_pkg")
library(dawson_pkg)

#data
drago <- read_sheet("https://docs.google.com/spreadsheets/d/1ugMWcZGALxgSLfm3bensXUi6GFj77AKqoZBkH-uFhcA/edit?usp=sharing")
```

## Functions
1st function: cleaning_data
This function will remove all NA values from the data. 

```
cleaning_data("Data/surveys.csv")
```

2nd function: create_plot
This function will create a jitter plot from the data with the sex on the x-axis, weight on the y-axis, and categorized sex by color. 

```
create_plot("Data/surveys.csv")
```


Third function: linear_model
This function will generate a linear model and summary from the data with hindfoot_length as the response and weight as the predictor. 

```
linear_model("Data/surveys.csv")
```


You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/v1/examples>.