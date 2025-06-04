#load libraries
library(tidyverse)
library(dplyr)
library(readr)
library(readxl)
library(ggplot2)
library(stringr)
library(forcats)
library(lubridate)

#import the data
data <- read.csv("UNdata.csv")
#rename the 'Country.or.Area' column
data <- rename(data, Country_Area = Country.or.Area)
data
  #1,560 observations, 7 variables

#################################################################################################

#Q1 -- Does the 'Value' column contain any missing data?

data %>%
  filter(is.na(Value)) %>%
  summarize(n_miss = n())
#furthermore, in using sum(is.na(data)), there are 0 missing values in the whole dataset

#assign the specified value
missing <- FALSE