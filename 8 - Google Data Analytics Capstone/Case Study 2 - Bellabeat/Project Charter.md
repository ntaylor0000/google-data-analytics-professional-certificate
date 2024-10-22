
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

Sršen encourages you to use public data that explores smart device users’ daily habits. She points you to a specific data set:

● [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit) (CC0: Public Domain, dataset made available through [Mobius](https://www.kaggle.com/arashnic)): This Kaggle data set contains personal fitness tracker from thirty fitbit users. Thirty eligible Fitbit users consented to the submission of personal tracker data, including minute-level output for physical activity, heart rate, and sleep monitoring. It includes information about daily activity, steps, and heart rate that can be used to explore users’ habits. Sršen tells you that this data set might have some limitations, and encourages you to consider adding another data to help address those limitations as you begin to work more with this data.

Now, prepare your data for analysis using the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Prepare  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● Where is your data located?  |
|  &emsp;  ● How is the data organized? Is it in long or wide format? |
|  &emsp;  ● Are there issues with bias or credibility in this data? [Does your data ROCCC?](https://www.coursera.org/lecture/data-preparation/what-is-bad-data-lHirM)  |
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
  1. [Download the dataset.](https://www.kaggle.com/datasets/arashnic/fitbit)
  2. Unzip the files.
  3. Create a folder on your desktop or Drive to house the files. Use appropriate file-naming conventions. If you need a refresher on file-naming conventions, you can revisit the [“All about file naming”](https://www.coursera.org/learn/data-preparation/lecture/OXHvS/all-about-file-naming) video or the [“Organization guidelines”](https://www.coursera.org/learn/data-preparation/supplement/fLKJI/organization-guidelines) reading.
  4. Upload the data to a tool of your choice. For a refresher on some different ways to do this, feel free to reference any of the following resources on how to get started in the following tools (proceed to next page):

|Spreadsheets|SQL|R|
|----|---|----|
|[Importing data from spreadsheets:](https://www.coursera.org/lecture/data-preparation/optional-importing-data-from-spreadsheets-and-databases-KCphN) This video from Course 3 will guide you through the steps you will follow to import data into your spreadsheet. This is useful if you want to perform your cleaning and analysis with spreadsheets. | [Uploading a CSV file in BigQuery:](https://scribehow.com/shared/Uploading_a_CSV_file_to_BigQuery__3qDWEO9rS6iORNQN_rBFSw) These step-by-step instructions will guide you through the process of uploading your CSV file into BigQuery so that you can start working with your data in SQL. | [Data import basics:](https://www.coursera.org/learn/data-analysis-r/supplement/qfrIM/data-import-basics) This reading from Course 7 will review importing data into R so that you can begin cleaning and analyzing it. If you are planning to use R for your case study, this is a useful starting point.
|[Data cleaning features in spreadsheets:](https://www.coursera.org/lecture/process-data/data-cleaning-features-in-spreadsheets-Ez3u5) This video from Course 4 outlines basic data cleaning features in spreadsheets; this is a great refresher if you need a review.|[Cleaning string variables using SQL:](https://www.coursera.org/lecture/process-data/cleaning-string-variables-using-sql-xVA4Z) This video from Course 4 covers some key cleaning techniques for string data in SQL.|[Cleaning up with the basics:](https://www.coursera.org/lecture/data-analysis-r/cleaning-up-with-the-basics-3FBCt) This video from Course 7 will guide you through some basic R cleaning functions that you will need to process your data for analysis.|
|[Even more data-cleaning techniques:](https://www.coursera.org/lecture/process-data/even-more-data-cleaning-techniques-Ei2IH) This video from Course 4 covers even more techniques you can use to clean your data and prepare it for analysis.|[Advanced data-cleaning functions part 1 and part 2:](https://www.coursera.org/learn/process-data/lecture/eU2wr/advanced-data-cleaning-functions-part-1) These videos cover more advanced cleaning functions that are a great refresher as you begin to work more closely.|[Transforming data:](https://www.coursera.org/learn/data-analysis-r/lecture/d108v/transforming-data) This video from Course 7 covers transforming data in R so that it is organized and formatted for easy analysis.|

  5. Proceed to the analyze step.

If you like, continue working with the data to better familiarize yourself and perhaps even identify new approaches to answering the business questions.

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

**Follow these steps for using SQL**

Here is a sample script that can help you do the following:
To use the sample script, [click this link](https://docs.google.com/document/d/1gWsf3gW4oKDbOD2MwFGZqzz_HAsOR4T9EQ-b1i40s58/template/preview?pli=1) and select “Use Template.”
  1. Import your data.
  2. Explore your data, perhaps looking at the total number of rows, distinct values, maximum, minimum, or mean values.
  3. Where relevant, use JOIN statements to combine your relevant data into different tables based upon the needs of your analyses.
  4. Create summary statistics.
  5. Investigate interesting trends and save that information to a table.

**Follow these steps for using R** 

Open your preferred version of R, click [this link](https://docs.google.com/document/d/1gmPCr0zqjOtVK_y_BKsaUItBJHakw9ghB4x7dZYVvvo/template/preview), and select “Use template.” Then, copy and paste the text from the template into an R script.
  1. Begin importing your data.
  2. Explore your data, gathering some summary statistics.
  3. Clean and transform your data to prepare for analysis.
  4. Create some initial exploratory visualizations.
     
### Share

Once you have completed your analysis, create your data visualizations. The visualizations should clearly communicate your high-level insights and recommendations. Use the following Case Study Roadmap as a guide:

|  Case Study Roadmap - Share  |
|  :--------------------------  |
|  Guiding questions  |
|  &emsp;  ● Were you able to answer the business questions?  |
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
  1. If you do not have one already, create an online portfolio. (Use [Build a Portfolio with Google Sites.](https://applieddigitalskills.withgoogle.com/c/middle-and-high-school/en/build-a-portfolio-with-google-sites/build-a-portfolio-with-google-sites/introduction-to-build-a-portfolio-with-google-sites.html))
  2. Consider how you want to feature your case study in your portfolio.
  3. Upload or link your case study findings to your portfolio.
  4. Write a brief paragraph describing the case study, your process, and your discoveries.
  5. Add the paragraph to introduce your case study in your portfolio.

### Wrap-up

Congratulations on finishing the Bellabeat marketing analysis case study! If you like, complete one of the other case studies to continue growing your portfolio. Or, use the steps from the ask, prepare, process, analyze, share, and act Case Study Roadmap to create a new project all your own. Best of luck on your job search!
