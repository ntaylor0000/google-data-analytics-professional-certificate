
## Case Study 2: How Can a Wellness Technology Company Play It Smart?

### Introduction

Welcome to the Bellabeat data analysis case study! In this case study, you will perform many real-world tasks of a junior data analyst. You will imagine you are working for Bellabeat, a high-tech manufacturer of health-focused products for women, and meet different characters and team members. In order to answer the key business questions, you will follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act. Along the way, the Case Study Roadmap tables — including guiding questions and key tasks — will help you stay on the right path.

By the end of this lesson, you will have a portfolio-ready case study. Download the packet and reference the details of this case study anytime. Then, when you begin your job hunt, your case study will be a tangible way to demonstrate your knowledge and skills to potential employers.

### Scenario

You are a junior data analyst working on the marketing analyst team at Bellabeat, a high-tech manufacturer of health-focused products for women. Bellabeat is a successful small company, but they have the potential to become a larger player in the global [smart device](https://en.wikipedia.org/wiki/Smart_device) market. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart device fitness data could help unlock new growth opportunities for the company. You have been asked to focus on one of Bellabeat’s products and analyze smart device data to gain insight into how consumers are using their smart devices. The insights you discover will then help guide marketing strategy for the company. You will present your analysis to the Bellabeat executive team along with your high-level recommendations for Bellabeat’s marketing strategy.

### Characters and products
- **Characters**
    - **Urška Sršen:** Bellabeat’s cofounder and Chief Creative Officer
    - **Sando Mur:** Mathematician and Bellabeat’s cofounder; key member of the Bellabeat executive team
    - **Bellabeat marketing analytics team:** A team of data analysts responsible for collecting, analyzing, and reporting data that helps guide Bellabeat’s marketing strategy. You joined this team six months ago and have been busy learning about Bellabeat’’s mission and business goals — as well as how you, as a junior data analyst, can help Bellabeat achieve them.

- **Products**
    - **Bellabeat app:** The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle, and mindfulness habits. This data can help users better understand their current habits and make healthy decisions. The Bellabeat app connects to their line of smart wellness products.
    - **Leaf:** Bellabeat’s classic wellness tracker can be worn as a bracelet, necklace, or clip. The Leaf tracker connects to the Bellabeat app to track activity, sleep, and stress.
    - **Time:** This wellness watch combines the timeless look of a classic timepiece with smart technology to track user activity, sleep, and stress. The Time watch connects to the Bellabeat app to provide you with insights into your daily wellness.
    - **Spring:** This is a water bottle that tracks daily water intake using smart technology to ensure that you are appropriately hydrated throughout the day. The Spring bottle connects to the Bellabeat app to track your hydration levels.
    - **Bellabeat membership:** Bellabeat also offers a subscription-based membership program for users. Membership gives users 24/7 access to fully personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their lifestyle and goals.

### About the company

Urška Sršen and Sando Mur founded Bellabeat, a high-tech company that manufactures health-focused smart products. Sršen used her background as an artist to develop beautifully designed technology that informs and inspires women around the world. Collecting data on activity, sleep, stress, and reproductive health has allowed Bellabeat to empower women with knowledge about their own health and habits. Since it was founded in 2013, Bellabeat has grown rapidly and quickly positioned itself as a tech-driven wellness company for women.

By 2016, Bellabeat had opened offices around the world and launched multiple products. Bellabeat products became available through a growing number of online retailers in addition to their own e-commerce channel on [their website](https://bellabeat.com/). The company has invested in traditional advertising media, such as radio, out-of-home billboards, print, and television, but focuses on digital marketing extensively. Bellabeat invests year-round in Google Search, maintaining active Facebook and Instagram pages, and consistently engages consumers on Twitter. Additionally, Bellabeat runs video ads on Youtube and display ads on the Google Display Network to support campaigns around key marketing dates.

Sršen knows that an analysis of Bellabeat’s available consumer data would reveal more opportunities for growth. She has asked the marketing analytics team to focus on a Bellabeat product and analyze smart device usage data in order to gain insight into how people are already using their smart devices. Then, using this information, she would like high-level recommendations for how these trends can inform Bellabeat marketing strategy.

### Ask

Sršen asks you to analyze smart device usage data in order to gain insight into how consumers use non-Bellabeat smart devices. She then wants you to select one Bellabeat product to apply these insights to in your presentation. These questions will guide your analysis:
  1. What are some trends in smart device usage?
  2. How could these trends apply to Bellabeat customers?
  3. How could these trends help influence Bellabeat marketing strategy?

You will produce a report with the following deliverables:
  1. A clear summary of the business task
  2. A description of all data sources used
  3. Documentation of any cleaning or manipulation of data
  4. A summary of your analysis
  5. Supporting visualizations and key findings
  6. Your top high-level content recommendations based on your analysis

Use the following Case Study Roadmap as a guide. Note: Completing this case study within a week is a good goal.

|  Case Study Roadmap - Ask  |
|  :--------------------------  |
|  **Guiding questions**  |
|  &emsp;  ● What is the problem you are trying to solve?  |
|  &emsp;  ● How can your insights drive business decisions?  |
|  **Key tasks**  |
|  &emsp;  ● Identify the business task  |
|  &emsp;  ● Consider key stakeholders  |
|  **Deliverable**  |
|  &emsp;  ● A clear statement of the business task  |


### Prepare

Use Cyclistic’s historical trip data to analyze and identify trends. [Download the previous 12 months of Cyclistic trip data here.](https://divvy-tripdata.s3.amazonaws.com/index.html) (Note: The datasets have a different name because Cyclistic is a fictional company. For the purposes of this case study, the datasets are appropriate and will enable you to answer the business questions. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).) This is public data that you can use to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identifiable information. This means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

Now, prepare your data for analysis using the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Prepare  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● Where is your data located?  |
|  &emsp;  ● How is the data organized?  |
|  &emsp;  ● Are there issues with bias or credibility in this data? [Does your data ROCCC?](https://www.coursera.org/learn/data-preparation/lecture/lHirM/what-is-bad-data)  |
|  &emsp;  ● How are you addressing licensing, privacy, security, and accessibility?  |
|  &emsp;  ● How did you verify the data’s integrity?  |
|  &emsp;  ● How does it help you answer your question?  |
|  &emsp;  ● Are there any problems with the data?  |
|  Key tasks  |
|  &emsp;  ● Download data and store it appropriately.  |
|  &emsp;  ● Identify how it’s organized.  |
|  &emsp;  ● Sort and filter the data.  |
|  &emsp;  ● Determine the credibility of the data.  |
|  Deliverable  |
|  &emsp;  ● A description of all data sources used  |

### Process

Then, process your data for analysis using the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Process  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● What tools are you choosing and why?  |
|  &emsp;  ● Have you ensured your data’s integrity?  |
|  &emsp;  ● What steps have you taken to ensure that your data is clean?  |
|  &emsp;  ● How can you verify that your data is clean and ready to analyze?  |
|  &emsp;  ● Have you documented your cleaning process so you can review and share those results?  |
|  Key tasks  |
|  &emsp;  ● Check the data for errors.  |
|  &emsp;  ● Choose your tools.  |
|  &emsp;  ● Transform the data so you can work with it effectively.  |
|  &emsp;  ● Document the cleaning process.  |
|  Deliverable  |
|  &emsp;  ● Documentation of any cleaning or manipulation of data  |

**Follow these steps:**
  1. [Download the previous 12 months of trip data.](https://divvy-tripdata.s3.amazonaws.com/index.html)
     Note: If you are planning on using Posit’s RStudio, use the [Divvy 2019 Q1](https://docs.google.com/spreadsheets/d/1uCTsHlZLm4L7-ueaSLwDg0ut3BP_V4mKDo2IMpaXrk4/template/preview?resourcekey=0-dQAUjAu2UUCsLEQQt20PDA#gid=1797029090) and [Divvy 2020 Q1](https://docs.google.com/spreadsheets/d/179QVLO_yu5BJEKFVZShsKag74ZaUYIF6FevLYzs3hRc/template/preview#gid=640449855) datasets. Choosing other data might lead to errors because the data exceeds the memory available in the free plan.
  2. Unzip the files.
  3. Create a folder on your desktop or Drive to house the files. Use appropriate file-naming conventions.
  4. Create subfolders for the .csv file and the .xls or Sheets file so that you have a copy of the original data. Move the downloaded files to the appropriate subfolder.
  5. Follow these instructions for either Excel (a) or Google Sheets (b):
    a. Launch Excel, open each file, and choose to Save As an Excel Workbook file. Put it in the subfolder you created for .xls files.
    b. Open each .csv file in Google Sheets and save it to the appropriate subfolder.
  6. Open your spreadsheet and create a column called ride_length. Calculate the length of each ride by subtracting the column started_at from the column ended_at (for example, =D2-C2) and format as HH:MM:SS using Format > Cells > Time > 37:30:55.
  7. Create a column called day_of_week, and calculate the day of the week that each ride started using the WEEKDAY command (for example, =WEEKDAY(C2,1)) in each file. Format as General or as a number with no decimals, noting that 1 = Sunday and 7 = Saturday.
  8. Proceed to the analyze step.

If you like, continue working with the data to better familiarize yourself, and perhaps even identify new approaches to answering the business questions.

### Analyze

Now that your data is stored appropriately and has been prepared for analysis, start putting it to work. Use the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Analyze  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● How should you organize your data to perform analysis on it?  |
|  &emsp;  ● Has your data been properly formatted?  |
|  &emsp;  ● What surprises did you discover in the data?  |
|  &emsp;  ● What trends or relationships did you find in the data?  |
|  &emsp;  ● How will these insights help answer your business questions?  |
|  Key tasks  |
|  &emsp;  ● Aggregate your data so it’s useful and accessible.  |
|  &emsp;  ● Organize and format your data.  |
|  &emsp;  ● Perform calculations.  |
|  &emsp;  ● Identify trends and relationships.  |
|  Deliverable  |
|  &emsp;  ● A summary of your analysis  |

**Follow these steps for using spreadsheets**
Open your spreadsheet application, then complete the following steps:
  1. Where relevant, make columns consistent and combine them into a single worksheet.
  2. Clean and transform your data to prepare for analysis.
  3. Conduct descriptive analysis.
  4. Run a few calculations in one file to get a better sense of the data layout. Options:
    ● Calculate the mean of ride_length
    ● Calculate the max ride_length
    ● [Calculate the mode](https://support.google.com/docs/answer/3094029?hl=en) of day_of_week
  5. Create a pivot table to quickly calculate and visualize the data. Options:
    ● Calculate the average ride_length for members and casual riders. Try rows = member_casual; Values = Average of ride_length.
    ● Calculate the average ride_length for users by day_of_week. Try columns = day_of_week; Rows = member_casual; Values = Average of ride_length.
    ● Calculate the number of rides for users by day_of_week by adding Count of trip_id to Values.
  6. Open another file and perform the same descriptive analysis steps. Explore different seasons to make some initial observations.
  7. Once you have spent some time working with the individual spreadsheets, merge them into a full-year view. Do this with the tool you have chosen to use to perform your final analysis, either a spreadsheet, a database and SQL, or R Studio.
  8. Export a summary file for further analysis.

**Follow these steps for using SQL**
Open your SQL tool of choice, then complete the following steps:
  1. Import your data.
  2. Explore your data, perhaps looking at the total number of rows, distinct values, maximum, minimum, or mean values.
  3. Where relevant, use JOIN statements to combine your relevant data into one table.
  4. Create summary statistics.
  5. Investigate interesting trends and save that information to a table.

**Follow these steps for using R** 
Open your preferred version of R, click [this link](https://docs.google.com/document/d/1TzCqk59_J23D5zNCvwAPSgK-5osp-wVnifsc-VOpCaI/template/preview), and select “Use template.” Then, copy and paste the text from the template into an R script.
  1. Import your data from [Divvy 2019 Q1](https://docs.google.com/spreadsheets/d/1uCTsHlZLm4L7-ueaSLwDg0ut3BP_V4mKDo2IMpaXrk4/template/preview?resourcekey=0-dQAUjAu2UUCsLEQQt20PDA#gid=1797029090) and [Divvy 2020 Q1](https://docs.google.com/spreadsheets/d/179QVLO_yu5BJEKFVZShsKag74ZaUYIF6FevLYzs3hRc/template/preview#gid=640449855)
.
  2. Make columns consistent and merge them into a single dataframe.
  3. Clean up and add data to prepare for analysis.
  4. Conduct descriptive analysis.
  5. Export a summary file for further analysis.

### Share

Now that you have performed your analysis and gained some insights into your data, create visualizations to share your findings. Moreno has reminded you that they should be sophisticated and polished in order to effectively communicate to the executive team. Use the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Share  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?  |
|  &emsp;  ● What story does your data tell?  |
|  &emsp;  ● How do your findings relate to your original question?  |
|  &emsp;  ● Who is your audience? What is the best way to communicate with them?  |
|  &emsp;  ● Can data visualization help you share your findings?  |
|  &emsp;  ● Is your presentation accessible to your audience?  |
|  Key tasks  |
|  &emsp;  ● Determine the best way to share your findings.  |
|  &emsp;  ● Create effective data visualizations.  |
|  &emsp;  ● Present your findings.  |
|  &emsp;  ● Ensure your work is accessible.  |
|  Deliverable  |
|  &emsp;  ● Supporting visualizations and key findings  |

**Follow these steps:**
  1. Take out a piece of paper and a pen and sketch some ideas for how you will visualize the data.
  2. Once you choose a visual form, open your tool of choice to create your visualization. Use a presentation software, such as PowerPoint or Google Slides, your spreadsheet program, Tableau, or R.
  3. Create your data visualization, remembering that contrast should be used to draw your audience’s attention to the most important insights. Use artistic principles including size, color, and shape.
  4. Ensure clear meaning through the proper use of common elements, such as headlines, subtitles, and labels.
  5. Refine your data visualization by applying deep attention to detail.

### Act

Now that you have finished creating your visualizations, act on your findings. Prepare the deliverables Morena asked you to create, including the three top recommendations based on your analysis. Use the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Act  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● What is your final conclusion based on your analysis?  |
|  &emsp;  ● How could your team and business apply your insights?  |
|  &emsp;  ● What next steps would you or your stakeholders take based on your findings?  |
|  &emsp;  ● Is there additional data you could use to expand on your findings?  |
|  Key tasks  |
|  &emsp;  ● Create your portfolio. |
|  &emsp;  ● Add your case study. |
|  &emsp;  ● Practice presenting your case study to a friend or family member. |
|  Deliverable  |
|  &emsp;  ● Your top three recommendations based on your analysis  |

**Follow these steps:**
  1. If you do not have one already, create an online portfolio.
  2. Consider how you want to feature your case study in your portfolio.
  3. Upload or link your case study findings to your portfolio.
  4. Write a brief paragraph describing the case study, your process, and your discoveries.
  5. Add the paragraph to introduce your case study in your portfolio.

### Wrap-up

Congratulations on finishing the Cyclistic bike-share case study! If you like, complete another case study to continue growing your portfolio. Or, use the steps from the Ask, Prepare, Process, Analyze, Share, and Act Case Study Roadmap to create a new project that’s all your own. Best of luck on your job search!
