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

The raw data consists of 12 files containing trip data collected from the Cyclistic bike-share program over the past 12 months. After an initial review and cleaning process, these files were merged into a single dataset, resulting in 5,667,186 rows and 13 columns of character and numeric data.

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

To prepare the data for analysis, several transformations were applied to the dataset:





### Tool-Specific Approaches

**Excel Approach**



**SQL Approach**




**R Approach**




## Step 4: Analyze

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
