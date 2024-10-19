#
# Analyze Data
#

# Calculate the mean, median, and mode of the ride_length column in minutes. 
# Output: Mean - 16.68, Median - 10, Mode - 5.

# Calculate the Mean

mean_ride_length <- mean(bike_trips_cleaned$ride_length, na.rm = TRUE)

# Calculate the Median

median_ride_length <- median(bike_trips_cleaned$ride_length, na.rm = TRUE)

# Function to calculate the Mode

get_mode <- function(x) {
  uniq_x <- unique(x)                            # Get unique values
  uniq_x[which.max(tabulate(match(x, uniq_x)))]  # Return the most frequent value
}

# Call the mode function on the ride_length column

mode_ride_length <- get_mode(bike_trips_cleaned$ride_length)

# Print results

cat("Mean ride length: ", mean_ride_length, "\n")
cat("Median ride length: ", median_ride_length, "\n")
cat("Mode ride length: ", mode_ride_length, "\n")


# Calculate the mode of the day_of_week column. (NOTE: 1 = Sunday and 7 = Saturday).
# Output: Mode - 4 (Wednesday)

# Call the mode function on the 'day_of_week' column

mode_day_of_week <- get_mode(bike_trips_cleaned$day_of_week)

# Print the result

cat("Mode of day_of_week: ", mode_day_of_week, "\n")


# Calculate the average ride_length by member_casual. 
# Output: casual - 24.14, member - 12.56

# Calculate the average ride_length by member_casual

avg_ride_length_by_member_casual <- bike_trips_cleaned %>%
  group_by(member_casual) %>%
  summarise(avg_ride_length = mean(ride_length, na.rm = TRUE))

# Print the result

print(avg_ride_length_by_member_casual)


# Calculate the average ride_length by day_of_week and member_casual. 
# Output: Average ride length grouped by both day of the week and membership status. 

# Calculate the average ride_length by day_of_week and member_casual

avg_ride_length_by_day_and_member <- bike_trips_cleaned %>%
  group_by(day_of_week, member_casual) %>%
  summarise(avg_ride_length = mean(ride_length, na.rm = TRUE))

# Print the result

print(avg_ride_length_by_day_and_member)


# Calculate the number of ride_id per day_of_week.
# Output: Total ride count for each day of the week.

# Calculate the number of ride_id per day_of_week

ride_count_by_day <- bike_trips_cleaned %>%
  group_by(day_of_week) %>%
  summarise(ride_count = n())

# Print the result

print(ride_count_by_day)


# Calculate the number of ride_id and average ride_length by hour of the day.
# Output: Ride count and average ride length for each hour.

# Extract the hour of the day from the 'started_at' timestamp

ride_summary_by_hour <- bike_trips_cleaned %>%
  mutate(hour_of_day = hour(started_at)) %>%
  group_by(hour_of_day) %>%
  summarise(
    ride_count = n(),                                  # Count of ride_ids
    avg_ride_length = mean(ride_length, na.rm = TRUE)  # Average ride length in minutes
  ) %>%
  arrange(hour_of_day)

# Print the results

print(ride_summary_by_hour)


# Calculate the average ride_length by starting_station_name.
# Output: Average ride length for each station. 

# Calculate the average ride_length by start_station_name

avg_ride_length_by_station <- bike_trips_cleaned %>%
  group_by(start_station_name) %>%
  summarise(
    avg_ride_length = mean(ride_length, na.rm = TRUE)  # Average ride length for each station
  ) %>%
  arrange(desc(avg_ride_length))                       # Sort by average ride length in descending order

# Print the results

print(avg_ride_length_by_station)

# Determine the most common start and end station pairs. 
# Output: The most frequently used station-to-station routes.

# Calculate the most common start and end station pairs

common_station_pairs <- bike_trips_cleaned %>%
  group_by(start_station_name, end_station_name) %>%
  summarise(
    ride_count = n()                                  # Count occurrences of each start-end pair
  ) %>%
  arrange(desc(ride_count))                           # Sort pairs by most common

# Print the results

print(common_station_pairs)

# Calculate the average ride_length by rideable_type.
# Output: Average ride length for different bike types.

# Calculate the average ride_length by rideable_type

avg_ride_length_by_type <- bike_trips_cleaned %>%
  group_by(rideable_type) %>%
  summarise(
    avg_ride_length = mean(ride_length, na.rm = TRUE)  # Calculate average ride length, ignoring NA values
  )

# Print the results

print(avg_ride_length_by_type)

