/*
PREPARE DATA
*/

-- Create primary table to store FitBit Fitness Tracker Data. 

CREATE TABLE IF NOT EXISTS public.daily_activity (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityDate TIMESTAMP,					-- Date of the recorded data.  
	TotalSteps INT,							-- Total number of steps taken.|
	TotalDistance FLOAT,					-- Total distance moved. 
	TrackerDistance FLOAT,					-- Total distance recorded by the tracker. 
	LoggedActivitiesDistance FLOAT,			-- Manually logged distance moved. 
	VeryActiveDistance FLOAT,				-- Distance traveled at a high activity level. 
	ModeratelyActiveDistance FLOAT,			-- Distance traveled at a moderate activity level. 
	LightActiveDistance FLOAT,				-- Distance traveled at a light activity level. 
 	SedentaryActiveDistance FLOAT,			-- Distance recorded during sedentary activity. 
	VeryActiveMinutes INT,					-- Minutes spent in very active exercise. 
	FairlyActiveMinutes INT,				-- Minutes spent in fairly active exercise. 
	LightlyActiveMinutes INT,				-- Minutes spent in lightly active exercise. 
	SedentaryMinutes INT,   				-- Minutes spent in sedentary activity. 
	Calories INT							-- Total number of calories burned. 
);

CREATE TABLE IF NOT EXISTS public.hourly_activity (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	TotalIntensity INT,						-- Total Intensity per hour.
	AverageIntensity FLOAT,					-- Average Intensity per hour.
	StepTotal INT,							-- Total Steps per hour.
	Calories FLOAT							-- Total Calories per hour. 
);

CREATE TABLE IF NOT EXISTS public.minute_activity (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Steps INT,								-- Total Steps per minaute.
	Calories FLOAT,							-- Total Calories per minute.
	METs INT,								-- Metabolic equivalents (METs) per minute.
	Intensity INT,							-- Intensity per minute.
	value INT,								-- Sleep value per minute.
	logId VARCHAR(50)						-- Sleep log ID number.
);

CREATE TABLE IF NOT EXISTS public.second_activity (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	Time TIMESTAMP,							-- Date and Time of the recorded data.  
	Value INT								-- Heart rate per second. 
);

CREATE TABLE IF NOT EXISTS public.sleepday_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	SleepDay TIMESTAMP,						-- Date and Time of the recorded data.  
    	TotalSleepRecords INT,				-- Total number of sleep cycles recorded.
    	TotalMinutesAsleep INT,				-- Total minutes the user was asleep.
    	TotalTimeInBed INT					-- Total minutes the user spent in bed.
);

-- Create temporary tables to allow for .csv files with differing column names to be imported for later inserting into appropriate tables.

CREATE TEMP TABLE staging_hourlyCalories_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	Calories FLOAT							-- Total Calories per hour. 
);

CREATE TEMP TABLE staging_hourlyCalories_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	Calories FLOAT							-- Total Calories per hour. 
);

CREATE TEMP TABLE staging_hourlyIntensities_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	TotalIntensity INT,						-- Total Intensity per hour.
	AverageIntensity FLOAT					-- Average Intensity per hour.
);

CREATE TEMP TABLE staging_hourlyIntensities_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	TotalIntensity INT,						-- Total Intensity per hour.
	AverageIntensity FLOAT					-- Average Intensity per hour.
);

CREATE TEMP TABLE staging_hourlySteps_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	StepTotal INT							-- Total Steps per hour.
);

CREATE TEMP TABLE staging_hourlySteps_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityHour TIMESTAMP,					-- Date and Time of the recorded data.  
	StepTotal INT							-- Total Steps per hour.
);

CREATE TEMP TABLE staging_minuteCaloriesNarrow_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Calories FLOAT							-- Total Calories per minute.
);

CREATE TEMP TABLE staging_minuteCaloriesNarrow_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Calories FLOAT							-- Total Calories per minute.
);

CREATE TEMP TABLE staging_minuteIntensitiesNarrow_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Intensity INT							-- Intensity per minute.
);

CREATE TEMP TABLE staging_minuteIntensitiesNarrow_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Intensity INT							-- Intensity per minute.
);

CREATE TEMP TABLE staging_minuteStepsNarrow_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Steps INT								-- Total Steps per minaute.
);

CREATE TEMP TABLE staging_minuteStepsNarrow_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	Steps INT								-- Total Steps per minaute.
);

CREATE TEMP TABLE staging_minuteMETsNarrow_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	METs INT								-- Metabolic equivalents (METs) per minute.
);

CREATE TEMP TABLE staging_minuteMETsNarrow_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	METs INT								-- Metabolic equivalents (METs) per minute.
);

CREATE TEMP TABLE staging_minuteSleep_merged (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	value INT,								-- Sleep value per minute.
	logId VARCHAR(50)						-- Sleep log ID number.
);

CREATE TEMP TABLE staging_minuteSleep_merged2 (
	Id VARCHAR(50),							-- Unique identifier for each user. 
	ActivityMinute TIMESTAMP,				-- Date and Time of the recorded data.  
	value INT,								-- Sleep value per minute.
	logId VARCHAR(50)						-- Sleep log ID number.
);

-- Import data from the .csv files into the `public.daily_activity` table

COPY public.daily_activity (Id,ActivityDate,TotalSteps,TotalDistance,TrackerDistance,LoggedActivitiesDistance,VeryActiveDistance,ModeratelyActiveDistance,LightActiveDistance,SedentaryActiveDistance,VeryActiveMinutes,FairlyActiveMinutes,LightlyActiveMinutes,SedentaryMinutes,Calories)
FROM '\Fitabase Data 3.12.16-4.11.16\dailyActivity_merged.csv' 
DELIMITER ',' CSV header;
COPY public.daily_activity (Id,ActivityDate,TotalSteps,TotalDistance,TrackerDistance,LoggedActivitiesDistance,VeryActiveDistance,ModeratelyActiveDistance,LightActiveDistance,SedentaryActiveDistance,VeryActiveMinutes,FairlyActiveMinutes,LightlyActiveMinutes,SedentaryMinutes,Calories)
FROM '\Fitabase Data 4.12.16-5.12.16\dailyActivity_merged.csv' 
DELIMITER ',' CSV header;

-- Import data from the .csv files into Hourly Temporary Tables.

COPY staging_hourlyCalories_merged (Id,ActivityHour,Calories)
FROM '\Fitabase Data 3.12.16-4.11.16\hourlyCalories_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_hourlyCalories_merged2 (Id,ActivityHour,Calories)
FROM '\Fitabase Data 4.12.16-5.12.16\hourlyCalories_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_hourlyIntensities_merged (Id,ActivityHour,TotalIntensity,AverageIntensity)
FROM '\Fitabase Data 3.12.16-4.11.16\hourlyIntensities_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_hourlyIntensities_merged2 (Id,ActivityHour,TotalIntensity,AverageIntensity)
FROM '\Fitabase Data 4.12.16-5.12.16\hourlyIntensities_merged.csv' 
DELIMITE ',' CSV header;
COPY staging_hourlySteps_merged (Id,ActivityHour,StepTotal)
FROM '\Fitabase Data 3.12.16-4.11.16\hourlySteps_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_hourlySteps_merged2 (Id,ActivityHour,StepTotal)
FROM '\Fitabase Data 4.12.16-5.12.16\hourlySteps_merged.csv' 
DELIMITER ',' CSV header;

-- Import data from the .csv files into Minute Temporary Tables.

COPY staging_minuteCaloriesNarrow_merged (Id,ActivityMinute,Calories)
FROM '\Fitabase Data 3.12.16-4.11.16\minuteCaloriesNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteCaloriesNarrow_merged2 (Id,ActivityMinute,Calories)
FROM '\Fitabase Data 4.12.16-5.12.16\minuteCaloriesNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteIntensitiesNarrow_merged (Id,ActivityMinute,Intensity)
FROM '\Fitabase Data 3.12.16-4.11.16\minuteIntensitiesNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteIntensitiesNarrow_merged2 (Id,ActivityMinute,Intensity)
FROM '\Fitabase Data 4.12.16-5.12.16\minuteIntensitiesNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteStepsNarrow_merged (Id,ActivityMinute,Steps)
FROM '\Fitabase Data 3.12.16-4.11.16\minuteStepsNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteStepsNarrow_merged2 (Id,ActivityMinute,Steps)
FROM '\Fitabase Data 4.12.16-5.12.16\minuteStepsNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteMETsNarrow_merged (Id,ActivityMinute,METs)
FROM '\Fitabase Data 3.12.16-4.11.16\minuteMETsNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteMETsNarrow_merged2 (Id,ActivityMinute,METs)
FROM '\Fitabase Data 4.12.16-5.12.16\minuteMETsNarrow_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteSleep_merged (Id,ActivityMinute,value,logId)
FROM '\Fitabase Data 3.12.16-4.11.16\minuteSleep_merged.csv' 
DELIMITER ',' CSV header;
COPY staging_minuteSleep_merged2 (Id,ActivityMinute,value,logId)
FROM '\Fitabase Data 4.12.16-5.12.16\minuteSleep_merged.csv' 
DELIMITER ',' CSV header;

-- Import data from the .csv files into the `public.second_activity` table

COPY public.second_activity (Id,Time,Value)
FROM '\Fitabase Data 3.12.16-4.11.16\heartrate_seconds_merged.csv' 
DELIMITER ',' CSV header;
COPY public.second_activity (Id,Time,Value)
FROM '\Fitabase Data 4.12.16-5.12.16\heartrate_seconds_merged.csv' 
DELIMITER ',' CSV header;

-- Insert hourly temporary tables into 'public.hourly_activity'.

INSERT INTO public.hourly_activity (Id, ActivityHour, Calories, TotalIntensity, AverageIntensity, StepTotal)
SELECT
    COALESCE(c1.Id, i1.Id, s1.Id, c2.Id, i2.Id, s2.Id) AS Id,
    COALESCE(c1.ActivityHour, i1.ActivityHour, s1.ActivityHour, c2.ActivityHour, i2.ActivityHour, s2.ActivityHour) AS ActivityHour,
    COALESCE(c1.Calories, c2.Calories) AS Calories,
    COALESCE(i1.TotalIntensity, i2.TotalIntensity) AS TotalIntensity,
    COALESCE(i1.AverageIntensity, i2.AverageIntensity) AS AverageIntensity,
    COALESCE(s1.StepTotal, s2.StepTotal) AS StepTotal
FROM 
	staging_hourlyCalories_merged c1
	FULL OUTER JOIN staging_hourlyIntensities_merged i1
    	ON c1.Id = i1.Id AND c1.ActivityHour = i1.ActivityHour
	FULL OUTER JOIN staging_hourlySteps_merged s1
    	ON COALESCE(c1.Id, i1.Id) = s1.Id AND COALESCE(c1.ActivityHour, i1.ActivityHour) = s1.ActivityHour
	FULL OUTER JOIN staging_hourlyCalories_merged2 c2
    	ON COALESCE(c1.Id, i1.Id, s1.Id) = c2.Id AND COALESCE(c1.ActivityHour, i1.ActivityHour, s1.ActivityHour) = c2.ActivityHour
	FULL OUTER JOIN staging_hourlyIntensities_merged2 i2
    	ON COALESCE(c1.Id, i1.Id, s1.Id, c2.Id) = i2.Id AND COALESCE(c1.ActivityHour, i1.ActivityHour, s1.ActivityHour, c2.ActivityHour) = i2.ActivityHour
	FULL OUTER JOIN staging_hourlySteps_merged2 s2
    	ON COALESCE(c1.Id, i1.Id, s1.Id, c2.Id, i2.Id) = s2.Id AND COALESCE(c1.ActivityHour, i1.ActivityHour, s1.ActivityHour, c2.ActivityHour, i2.ActivityHour) = s2.ActivityHour;

-- Insert minute temporary tables into 'public.minute_activity'.

INSERT INTO public.minute_activity (Id, ActivityMinute, Calories, Intensity, Steps, METs, value, logId)
SELECT 
    COALESCE(c.Id, i.Id, s.Id, m.Id, sl.Id) AS Id,
    COALESCE(c.ActivityMinute, i.ActivityMinute, s.ActivityMinute, m.ActivityMinute, sl.ActivityMinute) AS ActivityMinute,
    COALESCE(c.Calories, c2.Calories) AS Calories,
    COALESCE(i.Intensity, i2.Intensity) AS Intensity,
    COALESCE(s.Steps, s2.Steps) AS Steps,
    COALESCE(m.METs, m2.METs) AS METs,
    sl.value AS SleepValue,
    sl.logId AS SleepLogId
FROM 
    staging_minuteCaloriesNarrow_merged AS c
    FULL JOIN staging_minuteCaloriesNarrow_merged2 AS c2
        ON c.Id = c2.Id AND c.ActivityMinute = c2.ActivityMinute
    FULL JOIN staging_minuteIntensitiesNarrow_merged AS i
        ON COALESCE(c.Id, c2.Id) = i.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute) = i.ActivityMinute
    FULL JOIN staging_minuteIntensitiesNarrow_merged2 AS i2
        ON COALESCE(c.Id, c2.Id, i.Id) = i2.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute) = i2.ActivityMinute
    FULL JOIN staging_minuteStepsNarrow_merged AS s
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id) = s.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute) = s.ActivityMinute
    FULL JOIN staging_minuteStepsNarrow_merged2 AS s2
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id, s.Id) = s2.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute, s.ActivityMinute) = s2.ActivityMinute
    FULL JOIN staging_minuteMETsNarrow_merged AS m
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id, s.Id, s2.Id) = m.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute, s.ActivityMinute, s2.ActivityMinute) = m.ActivityMinute
    FULL JOIN staging_minuteMETsNarrow_merged2 AS m2
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id, s.Id, s2.Id, m.Id) = m2.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute, s.ActivityMinute, s2.ActivityMinute, m.ActivityMinute) = m2.ActivityMinute
    FULL JOIN staging_minuteSleep_merged AS sl
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id, s.Id, s2.Id, m.Id, m2.Id) = sl.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute, s.ActivityMinute, s2.ActivityMinute, m.ActivityMinute, m2.ActivityMinute) = sl.ActivityMinute
    FULL JOIN staging_minuteSleep_merged2 AS sl2
        ON COALESCE(c.Id, c2.Id, i.Id, i2.Id, s.Id, s2.Id, m.Id, m2.Id, sl.Id) = sl2.Id AND COALESCE(c.ActivityMinute, c2.ActivityMinute, i.ActivityMinute, i2.ActivityMinute, s.ActivityMinute, s2.ActivityMinute, m.ActivityMinute, m2.ActivityMinute, sl.ActivityMinute) = sl2.ActivityMinute;

-- Import data from the .csv files into the `public.sleepday_merged` table

COPY public.sleepday_merged (Id,SleepDay,TotalSleepRecords,TotalMinutesAsleep,TotalTimeInBed)
FROM '\Fitabase Data 4.12.16-5.12.16\sleepday_merged.csv' 
DELIMITER ',' CSV header;


/*
Process Data
*/

-- Create new column day_of_week to extract the day of the week from the ActivityDate column.

ALTER TABLE public.daily_activity
ADD day_of_week INT;

ALTER TABLE public.hourly_activity
ADD day_of_week INT;

ALTER TABLE public.minute_activity
ADD day_of_week INT;

ALTER TABLE public.second_activity
ADD day_of_week INT;

ALTER TABLE public.sleepday_merged
ADD day_of_week INT;

-- Update the day_of_week column by extracting the day of the week from ActivityDate. (NOTE: 1 = Sunday and 7 = Saturday).

UPDATE public.daily_activity
SET day_of_week = EXTRACT(DOW FROM ActivityDate) + 1;

UPDATE public.hourly_activity
SET day_of_week = EXTRACT(DOW FROM ActivityHour) + 1;

UPDATE public.minute_activity
SET day_of_week = EXTRACT(DOW FROM ActivityMinute) + 1;

UPDATE public.second_activity
SET day_of_week = EXTRACT(DOW FROM Time) + 1;

UPDATE public.sleepday_merged
SET day_of_week = EXTRACT(DOW FROM sleepday) + 1;

