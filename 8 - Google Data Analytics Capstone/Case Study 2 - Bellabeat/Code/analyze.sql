/*
Analyze Data
*/

-- Calculate Mean, Median, and Mode of Daily Steps
-- Mean: 7409.76, Median: 7155, Mode: 0 

SELECT 
    AVG(totalsteps) AS mean_total_steps,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY totalsteps) AS median_total_steps,
    MODE() WITHIN GROUP (ORDER BY totalsteps) AS mode_total_steps
FROM 
    public.daily_activity;

-- Calculate frequency of use
-- Min: 8, Max: 62

SELECT 
    id,
    COUNT(id) AS total_id
FROM 
    public.daily_activity
GROUP BY 
    id;

-- Classify users based on frequency of use
-- light_user: 2 (6%), moderate_user: 28 (80%), active_user: 5 (14%)

SELECT 
    id,
    COUNT(id) AS total_uses,
    CASE
        WHEN COUNT(id) BETWEEN 45 AND 62 THEN 'active_user'
        WHEN COUNT(id) BETWEEN 27 AND 44 THEN 'moderate_user'
        WHEN COUNT(id) BETWEEN 0 AND 26 THEN 'light_user'
    END AS user_classification
FROM 
    public.daily_activity
GROUP BY 
    id

-- Average minutes of activity by user
-- Users were primarily sedentary with lightly_active as the primary source of activity. 

SELECT 
    id,
    ROUND(AVG(veryactiveMinutes),2) AS avg_very_active_minutes,
    ROUND(AVG(fairlyactiveMinutes),2) AS avg_fairly_active_minutes,
    ROUND(AVG(lightlyactiveMinutes),2) AS avg_lightly_active_minutes,
    ROUND(AVG(sedentaryminutes),2) AS avg_sedentary_minutes
FROM 
    public.daily_activity
GROUP BY 
    id
ORDER BY 
    2,3,4,5 DESC;

-- Classify users based on avg daily steps
-- sedentary: 11, low_active: 7, somewhat_active: 10, active: 5, highly_active: 2

SELECT 
    id,
    ROUND(AVG(totalsteps),2) AS avg_totalsteps,
    CASE
        WHEN ROUND(AVG(totalsteps),2) < 5000 THEN 'sedentary'
        WHEN ROUND(AVG(totalsteps),2) BETWEEN 5000 and 7499 THEN 'low_active'
        WHEN ROUND(AVG(totalsteps),2) BETWEEN 7500 and 9999 THEN 'somewhat_active'
        WHEN ROUND(AVG(totalsteps),2) BETWEEN 10000 and 12499 THEN 'active'
        WHEN ROUND(AVG(totalsteps),2) > 12499 THEN 'highly_active'
    END AS total_steps_classification
FROM 
    public.daily_activity
GROUP BY 
    id
ORDER BY 
    avg_totalsteps;

-- Average Steps by Day of the Week
-- AVG: 7,407 steps per day

SELECT 
    day_of_week, 
    AVG(totalsteps) AS avg_steps
FROM 
    public.daily_activity
GROUP BY 
    day_of_week;

-- Average Calories Burned by Day of the Week
-- AVG: 2,304 calories per day

SELECT 
    day_of_week, 
    AVG(calories) AS avg_calories_burned
FROM 
    public.daily_activity
GROUP BY 
    day_of_week;

-- Average Calories Burned by Hour of Day
-- AVG: 96 calories per hour. Most active between 9AM and 8PM.

SELECT 
    EXTRACT(HOUR FROM activityhour) AS hour_of_day, 
    AVG(calories) AS avg_calories_burned
FROM 
    public.hourly_activity
GROUP BY 
    hour_of_day
ORDER BY 
    hour_of_day;

-- Steps and Calories Burned Correlation

SELECT 
    id,
    CORR(totalsteps, calories) AS steps_calories_correlation
FROM 
    public.daily_activity
GROUP BY 
    id;

-- Weekly Activity Analysis

SELECT 
    day_of_week,
    AVG(totalsteps) AS avg_steps,
    AVG(calories) AS avg_calories
FROM 
    public.daily_activity
GROUP BY 
    day_of_week
ORDER BY 
    avg_steps DESC;

-- Sedentary Time vs. Total Active Time Per User
-- AVG sedentary_ratio: 81%

SELECT 
    id,
    SUM(sedentaryminutes) AS total_sedentary_time,
    SUM(veryactiveminutes + fairlyactiveminutes + lightlyactiveminutes) AS total_active_time,
    SUM(sedentaryminutes)*1.00 / NULLIF(SUM(sedentaryminutes) + SUM(veryactiveminutes + fairlyactiveminutes + lightlyactiveminutes), 0) AS sedentary_ratio
FROM 
    public.daily_activity
GROUP BY 
    id;

-- Average time awake in bed
-- Min: 0 minutes, Max: 371 minutes, AVG: 40 minutes

SELECT 
    sd.id,
    AVG(da.totalsteps) AS avg_totalsteps,
    da.day_of_week,
    ROUND(AVG(sd.totaltimeinbed),2) AS avg_time_in_bed,
    ROUND(AVG(sd.totalminutesasleep),2) AS avg_time_asleep,
    ROUND(AVG(sd.totaltimeinbed - sd.totalminutesasleep),2) AS avg_time_awake
FROM 
    sleepday_merged AS sd
INNER JOIN 
    daily_activity AS da
ON 
    da.id = sd.id
AND 
    da.day_of_week = sd.day_of_week
GROUP BY 
    sd.id, 
    da.day_of_week
ORDER BY 
    6 DESC

