## Introduction:

This repository contains all the deliverables for the project, which is based on the scenario and questions outlined in the [Project Charter.md](<Project Charter.md>). The project follows the Google Data Analytics process, structured around six key steps: Ask, Prepare, Process, Analyze, Share, and Act, as outlined in the course. All solutions, analysis, and deliverables are organized accordingly within this repository.

> Note: Multiple tools are used throughout the project to complete similar tasks. While this may not be the most efficient approach in a real-world scenario, it is designed to showcase the variety of skills and tools developed during the course.

**Data Analysis Process**
  - Ask: Identify the problem or question to solve.
  - Prepare: Collect and organize the necessary data.
  - Process: Clean and transform the data for analysis.
  - Analyze: Explore the data to find insights and patterns.
  - Share: Present your findings with clear visuals and recommendations.
  - Act: Provide actionable steps based on the analysis.


## Step 1: Ask

**Project Background:**

Cyclistic is a bike-share program based in Chicago, offering over 5,800 bikes at 692 docking stations across the city. In addition to traditional bikes, Cyclistic provides reclining bikes, hand tricycles, and cargo bikes, making the program more accessible for people with disabilities and those who prefer a different riding experience. Most users choose the standard bikes, though about 8% use the assistive options. While many riders use Cyclistic for leisure, around 30% rely on it for their daily commute. Cyclistic offers flexible pricing with single-ride passes, full-day passes, and annual memberships. The company wants to shift its focus from casual riders to building up its base of annual members, as they are more profitable.

**Business Problem:**

Cyclistic has successfully attracted casual riders, but it is the annual members who drive the company’s profitability. While casual riders are already familiar with the service, they have not been as likely to convert to annual memberships. Lily Moreno, the director of marketing, believes converting casual riders into members is key to Cyclistic's future growth. The main question being asked is: **How do casual riders and annual members use Cyclistic bikes differently?** This insight is essential for crafting a marketing strategy that will convince casual riders to switch to annual memberships.

**Goals:**

The first step is to answer the question: **"How do casual riders and annual members use Cyclistic bikes differently?"** Once that’s clear, the team can dive into two other important questions:
1. Why would casual riders want to buy an annual membership?
2. How can Cyclistic use digital media to convince casual riders to become members?
   
By answering these questions, the goal is to develop a targeted marketing strategy that encourages casual riders to transition to annual memberships, driving revenue growth and long-term success for Cyclistic.

**Stakeholders:**

- **Lily Moreno:** Director of Marketing, responsible for guiding the marketing strategy and ensuring it aligns with the company’s goals.
- **Cyclistic Marketing Analytics Team:** The team of data analysts tasked with collecting, analyzing, and reporting data to support the marketing strategy.
- **Cyclistic Executive Team:** The decision-makers who will review and approve the recommended marketing strategies based on data insights.
- **Casual Riders and Annual Members:** The two key user groups whose behaviors and preferences will be analyzed to guide the marketing efforts.

## Step 2: Prepare

**Data Sources:**

This analysis uses Cyclistic’s historical trip data, covering the past 12 months of bike rides. The data was provided by Motivate International Inc. and is publicly available and licensed for use in this case study. While Cyclistic is fictional, the data is structured to allow analysis of bike usage without any real-world privacy concerns. The data has been anonymized and does not include any personally identifiable information (PII).

**Data Collection:**

The trip data is sourced from Cyclistic’s bike-sharing system, which tracks all rides taken activity within the service area. The dataset includes details such as ride start and end times, bike type, user type (casual rider or annual member), and the station locations. This data is stored in a series of (.csv) files, each representing one month of ride activity from October 2023 to September 2024. 

**Data Description:**

The dataset is split into twelve (.csv) files, one for each month from October 2023 to September 2024. Each file includes several key variables related to individual rides:

| No. | Name | Description |
|-----|------|-------------|
| 01  | ride_id | Unique identifier for each ride. |
| 02  | rideable_type | Type of bike used for the ride. |
| 03  | started_at | Timestamp indicating when the ride began. |
| 04  | ended_at | Timestamp indicating when the ride ended. |
| 05  | start_station_name | Name of the starting station. |
| 06  | start_station_id | ID of the starting station. |
| 07  | end_station_name | Name of the ending station. |
| 08  | end_station_id | ID of the ending station. |
| 09  | start_lat | Latitude of the starting location. |
| 10  | start_lng | Longitude of the starting location. |
| 11  | end_lat | Latitude of the ending location. |
| 12  | end_lng | Longitude of the ending location. |
| 13  | member_casual | Indicates whether the rider is a casual user or an annual member. |

This data provides a comprehensive look at user behavior and bike-sharing patterns, allowing us to answer key business questions regarding how different types of riders use Cyclistic’s bikes.

**Addressing Privacy and Accessibility:**

The data is publicly available and fully compliant with privacy standards. It does not contain any personally identifiable information (such as credit card numbers or addresses), ensuring the data is safe to use for analysis. The data is available in (.csv) format, which facilitates easy import and analysis using various tools such as R, SQL, and Tableau.

**How the Data Helps Answer Our Questions:**

This dataset is critical for answering the business question of how annual members and casual riders use Cyclistic bikes differently. By analyzing variables like ride start and end times, bike types, and station usage, we can identify patterns in bike usage. For example, we can compare the frequency and duration of rides between casual riders and annual members, explore which stations are used most frequently by each group, and analyze trends in seasonal or time-of-day usage.

**Potential Data Issues:**

There are no significant issues with the dataset in terms of privacy or security, as it has been anonymized. However, potential challenges include the limitations on linking individual riders to specific demographic information (like location or purchase history), which could add more context to the analysis. Additionally, there may be occasional missing or incorrect entries in the dataset that will need to be cleaned before proceeding with detailed analysis.

## Step 3: Process

**Process Overview:**

In this phase, Cyclistic bike-share data is processed and cleaned following the steps outlined in the Project Charter. The goal is to ensure the data is ready for analysis, involving tasks such as cleaning, merging, and transforming. The main steps in the data processing phase include:
  1.	**Data Cleaning:** This involves resolving formatting issues, addressing null or missing values, removing duplicate records, and fixing any other inconsistencies that could affect data quality.
  2.	**Merging and Transforming:** Combining the 12 separate data files into a single dataset and transforming it into a format that is easy to analyze.
The Project Charter outlines three approaches for data processing and analysis: Excel, SQL, and R. While Excel is useful, it is less optimal for large datasets due to file size limitations. In real-world situations, SQL or R would be more appropriate for handling large-scale data. For this portfolio project, all three methods are demonstrated to showcase a variety of technical skills.

**Data Overview:**

The raw data consists of 12 files containing trip data collected from the Cyclistic bike-share program over the past 12 months. After an initial review and cleaning process, these files were merged into a single dataset, resulting in 5,854,585 rows and 13 columns of character and numeric data.

### Review and Processing Steps:

**Step 1: File Setup and Data Merging**

  -	Unzip the files.
  -	Store the twelve .csv files in a dedicated folder to manage the raw data.
  -	Review the 12 original files and merge them into a single consolidated dataset.

**Step 2: Data Cleaning**

**The following quality checks were performed to ensure the integrity of the data:**

  1.	**Column Name Consistency:** Ensured that column names across all 12 files adhered to consistent naming conventions. Any discrepancies were standardized to maintain uniformity.
  2.	**Data Type Consistency:** Verified that the correct and consistent data types were applied across all relevant columns.
  3.	**Duplicate Records:** Identified and removed duplicate entries where trips were repeated within the dataset.
  4.	**Missing or Null Values:** Detected missing or null values in key columns (e.g., ride start time, ride end time) and removed rows with critical missing information.
  5.	**Inconsistent Data:** Checked for data inconsistencies, such as instances where the ride start time was later than the ride end time. These anomalies were addressed through removal or correction where feasible.

**Step 3: Data Transformation**

To prepare the dataset for analysis, several transformations were applied:

1.	**Creating a ‘Ride Length’ Column:**
    -	**Description:**
    
        A new column was created to calculate the length of each ride by subtracting the started_at timestamp from the ended_at timestamp. This calculation yields the total duration of the ride in minutes.
 
    -	**Formula:**
    
        ride_length = ended_at - started_at
   	
    -	**Tool-Specific Notes:**
    
        - **Excel:** =D2-C2 (Where C2 is the ride start time and D2 is the ride end time).
        - **SQL:** TIMESTAMPDIFF(MINUTE, started_at, ended_at) (Calculates ride duration in minutes).
        - **R:** difftime(ended_at, started_at, units = "mins") (Calculates ride duration in minutes).

2.	**Creating a ‘Day of Week’ Column:**
    -	**Description:**

        A new column was created to capture the day of the week for each ride, enabling the analysis of patterns based on weekday versus weekend usage.

  	- **Tool-Specific Notes:**

        - **Excel:** =WEEKDAY(C2, 1) (Returns a number from 1 (Sunday) to 7 (Saturday)).
        - **SQL:** DAYOFWEEK(started_at) (Returns the day of the week as a number).
        - **R:** wday(started_at, label = TRUE) (Returns the day of the week as a label, e.g., “Mon”, “Tue”, etc.).

### Tool-Specific Approaches

**Excel Approach**

While Excel is a widely-used tool for data analysis, it is not well-suited for handling very large datasets due to its memory limitations. Excel can accommodate up to 1,048,575 rows per worksheet, which may restrict its use for large-scale analysis. For this project, the following steps were performed using Excel:

Step 1: File Setup and Data Merging:

The 12 .csv files were merged into one workbook using Power Query. New columns were created to separate the started_at and ended_at timestamps into started_at_date, started_at_time, ended_at_date, and ended_at_time for better manipulation. However, an error was encountered due to Excel's row limit, which is insufficient for the dataset size. The data exceeded the 1,048,575-row limit per sheet, rendering this method impractical for the full dataset.

![](Visualizations/power_query.png "power_query.png")

Step 2: Data Cleaning:

The “Remove Duplicates” function was applied to identify and remove any duplicate records. No duplicates were detected within the subset of data that Excel could process.
      
Step 3: Data Transformation: 
  
Formulas were applied to calculate key metrics:

  - Ride length: =I2 - F2 (Where F2 is the ride start time and I2 is the ride end time).
  - Day of week: =WEEKDAY(C2, 1) (Returns the day of the week based on the start time).

![](Visualizations/excel_transformation.png "excel_transformation.png")

> Note: Due to the large size of the dataset (5,854,585 rows), Excel was unable to fully handle the data. While Excel can be useful for small to medium-sized datasets, SQL and R are better suited for managing large datasets of this scale.

> Note: If Excel is the only available tool for this analysis, it is possible to work with each of the 12 files individually and then aggregate the data into a single sheet for analysis. While this approach is feasible, it would be significantly more time-consuming and less efficient compared to using a database or scripting language like SQL or R. Nonetheless, it remains a viable option if other tools are unavailable.

**SQL Approach**

While SQL is a powerful and efficient tool for managing large datasets, it is well-suited for structured data analysis on databases. The following steps were performed using PostgreSQL to ensure the dataset was ready for in-depth analysis:

Step 1: File Setup and Data Merging:

The 12 .csv files were imported into the public.bike_trips table using PostgreSQL's COPY command. 
  - Create table to store dataset: A new table named bike_trips was created in PostgreSQL to hold the dataset. The table structure was defined with appropriate data types for each column, ensuring compatibility with the data in the .csv files.
  - Importing the .csv files: PostgreSQL’s COPY command was used to import the CSV files directly into the bike_rides table. 

Step 2: Data Cleaning: 

Data cleaning is crucial to ensure the dataset is accurate and suitable for analysis. Several steps were implemented to clean the data:

  - Removing duplicates: Duplicate records were identified and removed based on the ride_id using PostgreSQL’s ROW_NUMBER() function. This ensured that each ride had only one unique entry.
  - Removing rows with NULL values: Rows with NULL values in critical columns (e.g., started_at, ended_at, start_station_name, end_station_name) were removed to prevent incomplete or inaccurate data from skewing the analysis.
  - Removing outliers: Outliers based on ride_length were identified and removed. Specifically, records where the ride duration was less than 1 minute or greater than 24 hours were filtered out.

Step 3: Data Transformation:

To prepare the dataset for analysis, several transformations were applied to create new columns and extract relevant features:
  - Creating a new column for ride duration: A new column, ride_length, was created to calculate the duration of each ride in minutes. The duration was calculated as the difference between the ended_at and started_at timestamps.
  - Extracting the day of the week: A new column, day_of_week, was added to extract the day of the week from the started_at timestamp. The days of the week were represented as integers, where 1 = Sunday and 7 = Saturday.

SQL QUERIES: 

```

/*
PREPARE DATA
*/

-- Create primary table to store cyclistic bike trip data. 

CREATE TABLE IF NOT EXISTS public.bike_trips (
	ride_id	VARCHAR(50),			-- Unique identifier for each ride. 
	rideable_type VARCHAR(20),		-- Type of bike used for the ride. 
	started_at TIMESTAMP,			-- Timestamp indicating when the ride began. 
	ended_at TIMESTAMP,			-- Timestamp indicating when the ride ended. 
	start_station_name VARCHAR(100),	-- Name of the starting station. 
	start_station_id VARCHAR(50),		-- ID of the starting station. 
	end_station_name VARCHAR(100),		-- Name of the ending station. 
	end_station_id VARCHAR(50),		-- ID of the ending station. 
	start_lat FLOAT,			-- Latitude of the starting location. 
	start_lng FLOAT,			-- Longitude of the starting location. 
	end_lat	FLOAT,				-- Latitude of the ending location. 
	end_lng FLOAT,				-- Longitude of the ending location. 
	member_casual VARCHAR(10)		-- Indicates whether the rider is a casual user or an annual member. 
);

-- Import data from the 12 .csv files into the `public.bike_trips` table.

COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202310-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202311-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202312-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202401-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202402-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202403-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202404-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202405-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202406-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202407-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202408-divvy-tripdata.csv' DELIMITER ',' CSV header;
COPY public.bike_trips (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual) FROM '\202409-divvy-tripdata.csv' DELIMITER ',' CSV header;


-- Calculate the total row count, count of unique ride_id's, and the number of duplicate records.
-- Output: 5,854,544 rows, 5,854,333 distinct rows, 211 duplicate rows.

SELECT COUNT(*) AS count,
	COUNT(DISTINCT ride_id) AS distinct_count,
	COUNT(*) - COUNT(DISTINCT ride_id) AS duplicate_count
FROM public.bike_trips;

-- Identify and delete duplicate records based on ride_id. 
-- Delete 211 duplicate rows.

WITH ranked_bike_trips AS (
    SELECT ctid, 
           ROW_NUMBER() OVER (PARTITION BY ride_id) AS rn
    FROM public.bike_trips
)
DELETE FROM public.bike_trips
WHERE ctid IN (
    SELECT ctid
    FROM ranked_bike_trips
    WHERE rn > 1
);

-- Identify and delete rows with NULL values in key columns. 
-- Delete 1,626,238 null rows.

DELETE FROM public.bike_trips
WHERE started_at IS NULL
   OR ended_at IS NULL
   OR start_station_name IS NULL
   OR end_station_name IS NULL;

-- Identify and delete outliers based on ride_length.
-- Delete 50,330 outliers.

DELETE FROM public.bike_trips
WHERE EXTRACT(EPOCH FROM (ended_at - started_at)) / 60 < 1 	-- duration < 1 minute
   OR EXTRACT(EPOCH FROM (ended_at - started_at)) / 60 > 1440 	-- duration > 1440 minutes (24 hours)


/*
Process Data
*/

-- Create new column ride_length to store the duration of each bike ride in minutes.

ALTER TABLE public.bike_trips
ADD ride_length INT;

-- Update the ride_length column by calculating the difference between ended_at and started_at in minutes.

UPDATE public.bike_trips
SET ride_length = EXTRACT(EPOCH FROM (ended_at - started_at)) / 60;

-- Create new column day_of_week to extract the day of the week from the started_at column.

ALTER TABLE public.bike_trips
ADD day_of_week INT;

-- Update the day_of_week column by extracting the day of the week from started_at. (NOTE: 1 = Sunday and 7 = Saturday).

UPDATE public.bike_trips
SET day_of_week = EXTRACT(DOW FROM started_at) + 1;

```

**R Approach**

R is a powerful tool for statistical computing and data manipulation, particularly well-suited for handling large datasets like this one. The steps below outline the data processing workflow in R.

Step 1: File Setup and Data Merging:

The 12 .csv files were imported into R and merged into a single unified data frame using functions from the tidyverse package. 
  - Install necessary packages: Installed dyplyr, lubridate, ggplot2, and tidyverse packages.
  - Importing the .csv files: The readr::read_csv() function from the tidyverse package was used to read the CSV files into R.
  - Merging the datasets: To combine the multiple data frames into one, the dplyr::bind_rows() function was used. This function efficiently appends multiple data frames into a single data frame, maintaining row consistency across files. 

Step 2: Data Cleaning:

To ensure the dataset was clean and reliable for analysis, several data cleaning steps were performed using dplyr and base R functions:
  - Removing duplicates: Duplicate records were identified by checking for duplicate ride_id values. The dplyr::distinct() function was used to keep only unique rows, ensuring each ride had a single entry.
  - Removing rows with NULL values: Rows with missing values in critical columns (such as started_at, ended_at, start_station_name, or end_station_name) were filtered out to prevent incomplete records from affecting the analysis. This was done using the dplyr::filter() function.
  - Removing outliers: Outliers in ride duration were identified and filtered out. Rides with a duration of less than 1 minute or greater than 24 hours were considered outliers and excluded using conditions in the filter() function.

Step 3: Data Transformation: 

Several key transformations were performed to prepare the data for analysis:
  - Creating a new column for ride duration: A new column, ride_length, was created to calculate the duration of each ride in minutes. The difftime() function was used to compute the difference between the ended_at and started_at timestamps.
  - Extracting the day of the week: A new column, day_of_week, was created to extract the day of the week from the started_at timestamp. The day was represented as an integer, where 1 = Sunday and 7 = Saturday, using the weekdays() function and additional manipulation.

R CODE:

```
#
#  PREPARE DATA
#
  

## Install necessary packages and libraries

install.packages("tidyverse")
install.packages("dplyr")

library(dplyr)
library(lubridate)
library(ggplot2)
library(readr)
library(tidyverse)

# Set the directory where .csv files are stored

csv_directory <- "/raw_data/"

# List all .csv files in the directory

csv_files <- list.files(path = csv_directory, pattern = "*.csv", full.names = TRUE)

# Read and merge all .csv files into a single data frame using bind_rows

bike_trips <- csv_files %>%
  lapply(read_csv) %>%
  bind_rows()


# Calculate the total row count, count of unique ride_id's, and the number of duplicate records.
# Output: 5,854,544 rows, 5,854,333 distinct rows, 211 duplicate rows.

# Calculate total row count
total_count <- nrow(bike_trips)

# Calculate count of unique ride_id's
unique_ride_ids <- n_distinct(bike_trips$ride_id)

# Calculate the number of duplicate records
duplicate_count <- total_count - unique_ride_ids

# Print the results
cat("Total Row Count:", total_count, "\n")
cat("Unique Ride IDs:", unique_ride_ids, "\n")
cat("Duplicate Records:", duplicate_count, "\n")


# Identify and delete duplicate records based on ride_id. 
# Delete 211 duplicate rows.

bike_trips_cleaned <- bike_trips %>%
  distinct(ride_id, .keep_all = TRUE)

# Identify and delete rows with NULL values in key columns. 
# Delete 1,626,238 null rows. 

bike_trips_cleaned <- bike_trips_cleaned %>%
  filter(!is.na(started_at), !is.na(ended_at), !is.na(start_station_name), !is.na(end_station_name))

# Identify and delete outliers based on duration.
# Delete 50,330 outliers.

bike_trips_cleaned <- bike_trips_cleaned %>%
  filter(difftime(ended_at, started_at, units = "mins") >= 1 &         # duration < 1 minute
           difftime(ended_at, started_at, units = "mins") <= 1440)     # duration > 1440 minutes (24 hours)



#
# Process Data
#


# Create new column ride_length to store the duration of each bike ride in minutes.
# Update the ride_length column by calculating the difference between ended_at and started_at in minutes.

bike_trips_cleaned <- bike_trips_cleaned %>%
  mutate(ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")))

# Create new column day_of_week to extract the day of the week from the started_at column.
# Update the day_of_week column by extracting the day of the week from started_at. (NOTE: 1 = Sunday and 7 = Saturday).

bike_trips_cleaned <- bike_trips_cleaned %>%
  mutate(day_of_week = as.integer(format(started_at, "%w")) + 1)

```



## Step 4: Analyze

**Excel Approach**

**SQL Approach**

```

/*
Analyze Data
*/

-- Calculate the mean, median, and mode of the ride_length column in minutes. 
-- Output: Mean - 16.68, Median - 10, Mode - 5.

SELECT 
    AVG(ride_length) AS mean_ride_length,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ride_length) AS median_ride_length,
    MODE() WITHIN GROUP (ORDER BY ride_length) AS mode_ride_length
FROM 
    public.bike_trips;

-- Calculate the mode of the day_of_week column. (NOTE: 1 = Sunday and 7 = Saturday).
-- Output: Mode - 4 (Wednesday)

SELECT 
    MODE() WITHIN GROUP (ORDER BY day_of_week) AS mode_day_of_week
FROM 
    public.bike_trips;

-- Calculate the average ride_length by member_casual. 
-- Output: casual - 24.14, member - 12.56

SELECT 
    member_casual,
    AVG(ride_length) AS avg_ride_length
FROM 
    public.bike_trips
GROUP BY 
    member_casual
ORDER BY 
    member_casual;

-- Calculate the avearge ride_length by day_of_week and member_casual. 
-- Output: Average ride length grouped by both day of the week and membership status. 

SELECT 
    day_of_week,
    member_casual,
    AVG(ride_length) AS avg_ride_length
FROM 
    public.bike_trips
GROUP BY 
    day_of_week, member_casual
ORDER BY 
    day_of_week, member_casual;

-- Calculate the number of ride_id per day_of_week.
-- Output: Total ride count for each day of the week.

SELECT 
    day_of_week,
    COUNT(ride_id) AS ride_count
FROM 
    public.bike_trips
GROUP BY 
    day_of_week
ORDER BY 
    day_of_week;

-- Calculate uthe number of ride_id and average ride_length by hour of the day.
-- Output: Ride count and average ride length for each hour.

SELECT 
    EXTRACT(HOUR FROM started_at) AS hour_of_day, 
    COUNT(ride_id) AS ride_count,
    AVG(ride_length) AS avg_ride_length
FROM 
    public.bike_trips
GROUP BY 
    hour_of_day
ORDER BY 
    hour_of_day;

-- Calculate the average ride_length by starting_station_name.
-- Output: Average ride length for each station. 

SELECT 
    start_station_name,
    AVG(ride_length) AS avg_ride_length
FROM 
    public.bike_trips
GROUP BY 
    start_station_name
ORDER BY 
    avg_ride_length DESC;

-- Determine the most common start and end station pairs. 
-- Output: The most frequently used station-to-station routes.

SELECT 
    start_station_name, 
    end_station_name, 
    COUNT(ride_id) AS ride_count
FROM 
    public.bike_trips
GROUP BY 
    start_station_name, end_station_name
ORDER BY 
    ride_count DESC;

-- Calculate the average ride_length by rideable_type.
-- Output: Average ride length for different bike types.

SELECT 
    rideable_type, 
    AVG(ride_length) AS avg_ride_length
FROM 
    public.bike_trips
GROUP BY 
    rideable_type;

```

**R Approach**




**Exploratory Data Analysis:**

**Statistical Analysis and Models:**

**Visualizations:**

**Interpretation:**






## Step 5: Share

**Summary of Findings:**

**Recommendations:**

**Visual Communication:**

**Context:**






## Step 6: Act

**Next Steps:**

**Potential Challenges:**

**Long-Term Impact:**

**Further Analysis:**
