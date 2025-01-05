#
#  PREPARE DATA
#


## Install necessary packages and libraries

install.packages("dplyr")
install.packages("lubridate")
install.packages("tidyverse")

library(dplyr)
library(lubridate)
library(ggplot2)
library(readr)
library(scales)
library(tidyverse)

# Set the directory where .csv files are stored

csv_directory <- "C:/Users/dark_/Downloads/Google Data Analytics Certificiate/Case Study 2/raw_data/"

# List all .csv files in the directory

csv_files <- list.files(path = csv_directory, pattern = "*.csv", full.names = TRUE)

# Read and merge all .csv files into a single data frame using bind_rows

daily_activity <- csv_files %>%
  lapply(read_csv) %>%
  bind_rows()

sleepDay_file <- "C:/Users/dark_/Downloads/Google Data Analytics Certificiate/Case Study 2/raw_data/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv"
sleepDay_merged <- read_csv(sleepDay_file)

# Calculate the total row count, count of unique id's, and the number of duplicate records.
# Output: 1,397 rows, 1,373 distinct rows, 24 duplicate rows.

total_count <- nrow(daily_activity)                                       # Calculate total row count
unique_ids <- n_distinct(daily_activity$Id, daily_activity$ActivityDate)  # Calculate count of unique Id's
duplicate_count <- total_count - unique_ids                               # Calculate the number of duplicate records

cat("Total Row Count:", total_count, "\n")
cat("Unique IDs:", unique_ids, "\n")
cat("Duplicate Records:", duplicate_count, "\n")

# Rank duplicates based on Calories, keeping the highest calorie value for each (Id, ActivityDate) combination

daily_activity_ranked <- daily_activity %>%
  arrange(Id, ActivityDate, desc(Calories)) %>%
  group_by(Id, ActivityDate) %>%
  mutate(rank = row_number()) %>%
  ungroup()

# Identify and remove duplicates (keeping the highest calorie record)
# Remove all rows where the rank is greater than 1

daily_activity_cleaned <- daily_activity_ranked %>%
  filter(rank == 1) %>%
  select(-rank)

cat("Total Row Count after Cleaning:", nrow(daily_activity_cleaned), "\n")
cat("Rows Deleted:", total_count - nrow(daily_activity_cleaned), "\n")

# Identify and delete rows with NULL values in key columns. 
# Delete 0 null rows. 

daily_activity_cleaned <- daily_activity_cleaned %>%
  filter(!is.na(Id), !is.na(ActivityDate), !is.na(Calories))

# Identify and delete outliers based on Calories.
# Delete 6 rows

daily_activity_cleaned <- daily_activity_cleaned %>%
  filter(Calories > 0)



#
# Process Data
#

# Create new column day_of_week to extract the day of the week from the ActivityDate column.
# Update the day_of_week column by extracting the day of the week from ActivityDate. (NOTE: 1 = Sunday and 7 = Saturday).

daily_activity_cleaned <- daily_activity_cleaned %>%
  mutate(ActivityDate = as.Date(ActivityDate, format = "%m/%d/%Y")) %>%
  mutate(day_of_week = as.integer(format(ActivityDate, "%w")) + 1) 

sleepDay_merged <- sleepDay_merged %>%
  mutate(SleepDay = as.Date(SleepDay, format = "%m/%d/%Y")) %>%
  mutate(day_of_week = as.integer(format(SleepDay, "%w")) + 1) 

