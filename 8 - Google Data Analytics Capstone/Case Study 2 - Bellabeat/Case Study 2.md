## Introduction:

This project centers on analyzing the usage patterns of Bellabeat’s smart device users, with a focus on identifying actionable insights for marketing strategies. Following the structured data analysis process from the Google Data Analytics course, the project adheres to the six key steps: Ask, Prepare, Process, Analyze, Share, and Act. The goal is to help Bellabeat utilize smart device data to enhance growth opportunities.

The analysis is designed to demonstrate various data analytics skills and techniques while maintaining a clear focus on delivering insights that align with Bellabeat's business goals.

**Data Analysis Process**
  - Ask: Identify the problem or question to solve.
  - Prepare: Collect and organize the necessary data.
  - Process: Clean and transform the data for analysis.
  - Analyze: Explore the data to find insights and patterns.
  - Share: Present your findings with clear visuals and recommendations.
  - Act: Provide actionable steps based on the analysis.

## Step 1: Ask

**Project Background:**

This case study focuses on Bellabeat, a wellness technology company that designs health-oriented smart products for women. The company seeks to leverage data from its devices to better understand user behavior and enhance its marketing strategies. By analyzing this data, Bellabeat aims to identify patterns and trends that can drive business growth and customer engagement.

The company’s Chief Creative Officer, Urška Sršen, believes that deeper insights into smart device usage will reveal new opportunities for market expansion. This analysis will concentrate on one of Bellabeat’s products, with the findings intended to guide future marketing initiatives and help the company strengthen its presence in the competitive wellness technology market.

**Business Problem:**

Bellabeat needs to develop a more data-driven marketing strategy by leveraging the data collected from its smart devices. The company currently lacks a detailed understanding of user behavior, which limits its ability to tailor marketing campaigns and optimize product offerings. A deeper analysis of user data will enable Bellabeat to uncover insights that will drive growth and enhance customer engagement.

**Goals:**

The main objective of the analysis is to answer the key question about user behavior with Bellabeat products. The findings will support answering the following questions:
1.	What are the key trends and patterns in smart device usage among Bellabeat customers?
2.	How can these insights be applied to Bellabeat’s marketing strategy to enhance customer engagement and acquisition?

**Stakeholders:**

Characters:
  
   -	Urška Sršen: Co-founder and Chief Creative Officer of Bellabeat.
   -	Sando Mur: Mathematician, co-founder, and a key member of the Bellabeat executive team.
   -	Bellabeat Marketing Analytics Team: A group responsible for collecting, analyzing, and reporting data to drive marketing strategies.

Products:
  
   -	Bellabeat App: Tracks user activity, sleep, stress, and mindfulness habits, offering personalized health insights.
   -	Leaf: A wearable wellness tracker that connects to the Bellabeat app to monitor activity, sleep, and stress.
   -	Time: A smartwatch that tracks wellness metrics and provides insights via the Bellabeat app.
   -	Spring: A smart water bottle that monitors hydration levels through the app.
   -	Bellabeat Membership: A subscription service offering personalized wellness guidance.

## Step 2: Prepare

**Data Sources:**

For this analysis, the following dataset will be utilized:
- Fitbit Fitness Tracker Data (CC0: Public Domain, Kaggle): This dataset includes personal fitness tracker data from 30 consenting Fitbit users, comprising minute-level metrics related to physical activity, heart rate, and sleep monitoring. It offers detailed information on daily activity, steps, heart rate, and sleep patterns, facilitating an exploration of user habits.
  
**Data Collection:**

The dataset is structured across multiple CSV files, each representing different types of fitness data collected from March 12, 2016, to May 12, 2016. Key components include:
- Daily Activity: Metrics related to steps taken, distance traveled, and calories burned.
- Heart Rate Monitoring: Data on heart rate measurements.
- Sleep Monitoring: Data regarding sleep duration.
- Weight Monitoring: Data on weight and BMI (Body Mass Index).

This dataset, sourced from the Mobius Kaggle repository, is in the public domain and compliant with licensing and privacy regulations. It has been anonymized, and users have consented to the use of their data for analysis.

**Data Description:**

Each table in the dataset provides unique insights and is linked by a common ID field. Below is a sample from the dailyActivity_merged.csv file, which combines multiple data sources into a single file.	

| No. | Name | Description |
|-----|------|-------------|
| 01  | Id | Unique identifier for each user. |
| 02  | ActivityDate | Date of the recorded data. |
| 03  | TotalSteps | Total number of steps taken.|
| 04  | TotalDistance | Total distance moved. |
| 05  | TrackerDistance | Total distance recorded by the tracker. |
| 06  | LoggedActivitiesDistance | Manually logged distance moved. |
| 07  | VeryActiveDistance | Distance traveled at a high activity level. |
| 08  | ModeratelyActiveDistance | Distance traveled at a moderate activity level. |
| 09  | LightActiveDistance |  Distance traveled at a light activity level. |
| 10  | SedentaryActiveDistance | Distance recorded during sedentary activity. |
| 1  | VeryActiveMinutes | Minutes spent in very active exercise. |
| 12  | FairlyActiveMinutes | Minutes spent in fairly active exercise. |
| 13  | LightlyActiveMinutes | Minutes spent in lightly active exercise. |
| 14  | SedentaryMinutes | Minutes spent in sedentary activity. |
| 15  | Calories | Total number of calories burned. |

These variables are essential for analyzing user engagement and behavior with fitness trackers.

**Addressing Privacy and Accessibility:**

The dataset is publicly available and fully anonymized, addressing privacy and security concerns. The exclusion of PII, such as names or contact details, ensures compliance with privacy standards. Additionally, the data is accessible in .csv format, which is versatile and can easily be imported into tools like R, SQL, and Tableau for analysis.

**Data Integrity:**

Ensuring data integrity is essential for generating reliable insights. The following steps were implemented to verify and maintain data quality:
- **Duplicate Data:** A check for duplicate entries will ensure that each ride is logged only once. Any duplicates found will be removed to prevent skewed results.
- **Missing Data:** Missing or incomplete entries will be identified. These records will either be cleaned or excluded from the analysis, depending on the extent and impact of the missing data.
- **Outliers:** Extreme values will be reviewed to determine if they represent legitimate data points or errors. Any unjustifiable outliers may be excluded to avoid distorting the analysis.
- **Data Types:** Each variable will be validated to ensure the correct data types are used.

These steps will ensure that the dataset is clean, consistent, and reliable, enabling accurate insights and valid business conclusions.

**Data Credibility (ROCCC Framework):**

To assess the credibility of the data, we apply the ROCCC framework, focusing on:
- Reliable: The data is sourced directly from Fitbit trackers, ensuring accurate reporting of user metrics.
- Original: This is first-party data collected by Fitbit, enhancing its authenticity.
- Comprehensive: The dataset contains all necessary variables for understanding user habits, from activity levels to sleep patterns.
- Current: Collected in 2016, the dataset may limit relevance due to shifts in user behavior and technology.
- Cited: The dataset is licensed by Mobius and is available under CC0 (Public Domain).

**How the Data Answers the Business Question:**

The Fitbit dataset is crucial for answering the core question of how smart device users engage with fitness trackers. By analyzing various metrics, insights can be drawn regarding user behaviors, such as:
- **Activity Patterns:** Exploring correlations between daily steps, heart rate, and sleep quality to understand wellness.
- **Engagement Timing:** Identifying trends in activity timing, such as increased engagement at certain times of the day or week.
- **Health Outcomes:** Analyzing relationships between activity levels and sleep quality to inform wellness promotion strategies.

**Potential Data Issues:**

While the dataset is robust, there are several limitations to consider:
- **Limited Demographic Data:** The absence of demographic information (e.g., age, gender) restricts further user segmentation.
- **Sample Size:** The small sample of 30 users may not represent broader user behavior comprehensively.
- **Not Current:** The data, collected in 2016, may not reflect recent user engagement trends.
- **Short Time Range:** Covering only two months of data, it provides limited insights into long-term trends.

Despite these limitations, the dataset remains robust and offers sufficient depth to generate valuable insights into user behavior with fitness trackers.

## Step 3: Process

- Overview:
- Review and Processing Steps:
- Step 1: File Setup and Data Merging
- Step 2: Data Cleaning
- Step 3: Data Transformation

- Tool-Specific Approaches
- Excel Approach
- SQL Approach
- SQL QUERIES:
  ``` sql
  ```
- R Approach
- R CODE:
  ``` r
  ```

## Step 4: Analyze

- Data Analysis Summary:
- SQL QUERIES:
  ``` sql
  ```
- R CODE:
  ``` r
  ```

## Step 5: Share

- Data Visualization and Findings Summary:
- Key Recommendations:
- Key Questions Still Remaining:
- Tableau Dashboard (LINK TO PUBLIC DASHBOARD):
- R CODE:
  ``` r
  ```
- R VISUALIZATIONS:

## Step 6: Act

