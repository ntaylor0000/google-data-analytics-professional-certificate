## Introduction:

This repository contains all the work completed for the project, which is based on the questions and scenario outlined in the [README.md](README.md). The project follows the Google Data Analytics process, structured around six key steps: Ask, Prepare, Process, Analyze, Share, and Act, as outlined in the course. All solutions, analysis, and deliverables are organized accordingly within this repository.

Note: Throughout the project, I use multiple tools to accomplish the same tasks. While this approach may be inefficient in a real-world scenario, it is intentionally designed to demonstrate the range of skills and tools I’ve acquired during the course.

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

Cyclistic has had success attracting casual riders, but it’s the annual members that really drive profit. The challenge is that while casual riders are already familiar with the service, they haven’t been as likely to commit to an annual membership. Lily Moreno, the director of marketing, believes converting casual riders into members is key to Cyclistic's future growth. The main question she’s asking is: **How do casual riders and annual members use Cyclistic bikes differently?** This insight is essential for crafting a marketing strategy that will convince casual riders to switch to annual memberships.

**Goals:**

The first step is to answer the question: **"How do casual riders and annual members use Cyclistic bikes differently?"** Once that’s clear, the team can dive into two other important questions:
1. Why would casual riders want to buy an annual membership?
2. How can Cyclistic use digital media to convince casual riders to become members?
   
By answering these, the goal is to build a targeted marketing strategy that encourages more casual riders to sign up for annual memberships, helping Cyclistic increase both its revenue and its long-term growth.

**Stakeholders:**

- **Lily Moreno:** Director of Marketing, responsible for guiding the marketing strategy and ensuring it aligns with the company’s goals.
- **Cyclistic Marketing Analytics Team:** The team of data analysts tasked with collecting, analyzing, and reporting data to support the marketing strategy.
- **Cyclistic Executive Team:** The decision-makers who will review and approve the recommended marketing strategies based on data insights.
- **Casual Riders and Annual Members:** The two key user groups whose behaviors and preferences will be analyzed to guide the marketing efforts.

## Step 2: Prepare

**Data Sources:**

For this analysis, we'll be using Cyclistic’s historical trip data, which covers the last 12 months of bike rides. The data was provided by Motivate International Inc. and is publicly available and licensed for use in this case study. While Cyclistic is a fictional, the data is structured in a way that allows us to explore bike usage without any real-world privacy concerns. The data has been anonymized and does not include any personally identifiable information (PII).

**Data Collection:**

The trip data is sourced from Cyclistic’s bike-sharing system, which tracks all rides taken activity within the service area. The dataset includes details such as ride start and end times, bike type, user type (casual rider or annual member), and the station locations. This data is stored in a series of (.csv) files, each representing one month of ride activity from October 2023 to September 2024. 

**Data Description:**

The dataset is split into twelve separate (.csv) files, one for each month from October 2023 to September 2024. Each file includes several key variables related to individual rides:
- **ride_id:** Unique identifier for each ride.
- **rideable_type:** Type of bike used for the ride.
- **started_at & ended_at:** Timestamps indicating when the ride began and ended.
- **start_station_name & start_station_id:** Name and ID of the starting station.
- **start_lat & start_lng:** Latitude and longitude of the starting location.
- **end_station_name & end_station_id:** Name and ID of the ending station.
- **end_lat & end_lng:** Latitude and longitude of the ending location.
- **member_casual:**  Indicates whether the rider is a casual user or an annual member.

This data provides a comprehensive look at user behavior and bike-sharing patterns, allowing us to answer key business questions regarding how different types of riders use Cyclistic’s bikes.

**Addressing Privacy and Accessibility:**

The data is publicly available and fully compliant with privacy standards. It does not contain any personally identifiable information (such as credit card numbers or addresses), ensuring the data is safe to use for analysis. Additionally, the data is accessible in (.csv) format, making it easy to import and work with across different analysis tools like R, SQL, and Tableau.

**How the Data Helps Answer Our Questions:**

This dataset is critical for answering the business question of how annual members and casual riders use Cyclistic bikes differently. By analyzing variables like ride start and end times, bike types, and station usage, we can identify patterns in bike usage. For example, we can compare the frequency and duration of rides between casual riders and annual members, explore which stations are used most frequently by each group, and analyze trends in seasonal or time-of-day usage.

**Potential Data Issues:**

There are no significant issues with the dataset in terms of privacy or security, as it has been anonymized. However, potential challenges include the limitations on linking individual riders to specific demographic information (like location or purchase history), which could add more context to the analysis. Additionally, there may be occasional missing or incorrect entries in the dataset that will need to be cleaned before proceeding with detailed analysis.

## Step 3: Process




**Data Cleaning:**

**Data Transformation:**

**Data Exploration:**

**Tools Used:**







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
