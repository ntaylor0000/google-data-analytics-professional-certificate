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

-- Count of rides among member and casual users: 
-- Output: casual -  1,486,827 - 35.59%, member - 2,690,938 - 64.41%

SELECT 
    member_casual, 
    COUNT(ride_id) AS ride_count,
    ROUND((COUNT(ride_id) * 100.0 / (SELECT COUNT(*) FROM public.bike_trips)), 2) AS percentage_of_total
FROM 
    public.bike_trips
GROUP BY 
    member_casual
ORDER BY 
    member_casual;

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

-- Calculate the average ride_length by day_of_week and member_casual. 
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

-- Calculate the number of ride_id by day_of_week and member_casual.
-- Output: Total ride count grouped by both day of the week and membership status.

SELECT 
    day_of_week, 
    member_casual, 
    COUNT(ride_id) AS ride_count
FROM 
    public.bike_trips
GROUP BY 
    day_of_week, member_casual
ORDER BY 
    day_of_week, member_casual;

-- Calculate the number of ride_id and average ride_length by hour of the day.
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

-- Compare rideable_type by member_casual.
-- Output: Count and Percentage of rides by bike type and member type.

SELECT 
    rideable_type, 
    member_casual, 
    COUNT(ride_id) AS ride_count
FROM 
    public.bike_trips
GROUP BY 
    rideable_type, member_casual
ORDER BY 
    rideable_type, member_casual;
