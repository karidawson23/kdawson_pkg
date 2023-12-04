# SeaTurtleDataProcessor R Package

## An R package for processing sea turtle nesting data

## Overview

This is for sea turtle biologists. This plots GPS coordinates, shows the relationship between different biomarkers, reproductive output and carapace size. It can even show individual turtle nesting data. 


The SeaTurtleDataProcessor R package is designed to facilitate the analysis and processing of sea turtle data. This package provides a set of functions to handle various tasks related to sea turtle research, including data cleaning, transformation, data analysis and visualization. Whether you are working with satellite tracking data, nesting site records, or other types of sea turtle data, this package aims to streamline your workflow. 

# Packages that you will need:
```
library(tidyverse)
library(ggplot2)
library(leaflet)
library(dplyr)
```

## Installation

You can install the SeaTurtleDataProcessor package from GitHub using the devtools package. Run the following commands in your R console:

```
install.packages("remotes")
library(remotes)

install.packages("googlesheets4")
library(googlesheets4)

remotes::install_github("karidawson23/kdawson_pkg")
install.packages("kdawson_pkg")
library(kdawson_pkg)

data
drago <- read_sheet("https://docs.google.com/spreadsheets/d/11g_lm6PpiA2daKHFh-LWdNPHWmut4xmhLDmoEC4gOek/edit#gid=2036229186")

```


## Data Info:

The columns of my dataset include:

1. sample number: Allows you to identify exactly which sample your are dealing with while also offering some information about when the sample was collect. 1 represents the begining of the nesting season and the farther you get from 1, the more time has passed.
2. date: The date that the sample was collected
3. turtle_id: Allows us to identify who the turtle is sort of like an unique identifier. We have a few repeated turtle within out data set. 
4. e2: Concentration of steroid hormone, estradiol 
5. test: Concentration of steroid hormone testosterone
6. vtg: Concentration of vitellogenin biomarker 
7. bhb: Concentration β-hydroxybutyrate  
8. total_protein:Concentration of circulating total protein 
9. output: Reproductive output meaning the number of eggs laid when sample was taken
10. ccl: Curved carapace length
11. scl: Straight carapace length
12. latitude: Latitude coordinates of nests
13. longitude: Longitude coordinates of nests
14. time


## Functions
My package has 5 functions:

1. Clean data by removing NA's
2. Transforming the data
3. Creating a bar plot
4. Performing a stats analysis 
5. Mapping the nesting coordinates onto a map 


1st function: cleaning_data
This function will remove all NA values from the data. 
```
clean(drago)
```

2nd function: create_plot
This function will create a bar plot of vtg and reproductive output
```
bar_plot(drago, sample_number, output)
```

3rd function:Transform
This function groups the data by the sample number and transforms a column to produce the mean of one of the data categories. In this case it is calculating the mean of the reproductive output.  

```
group_and_summarize(drago, c(time, output, bhb), "time", mean)

```
4th function: linear_model
This function will generate a linear model and summary from the data with hindfoot_length as the response and weight as the predictor. 

```
normality_test(drago, "output", "bhb")
```

5th function: Map of nests
Alot of turtle nesting data contains gps coordinates of the nests location and this function allows you to plot those locations. The points on the map are also interactive allowing you to see the turtle id of the turtle who nested. It can be useful if you needed to see over time what part of a beach has the mosty "traffic"  

```
map_nests(drago, longitude, latitude)
```

