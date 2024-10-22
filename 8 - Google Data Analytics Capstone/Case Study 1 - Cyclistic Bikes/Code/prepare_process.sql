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

-- Identify and delete outliers based on duration.
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

