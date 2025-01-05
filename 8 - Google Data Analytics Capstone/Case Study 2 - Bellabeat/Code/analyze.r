#
# Analyze Data
#


# Calculate Mean, Median, and Mode of Daily Steps
# Mean: 7409.76, Median: 7155, Mode: 0 

mean_steps <- mean(daily_activity_cleaned$TotalSteps, na.rm = TRUE)
median_steps <- median(daily_activity_cleaned$TotalSteps, na.rm = TRUE)
mode_steps <- as.numeric(names(sort(table(daily_activity_cleaned$TotalSteps), decreasing = TRUE)[1]))

cat("Mean of total steps:", mean_steps, "\n")
cat("Median of total steps:", median_steps, "\n")
cat("Mode of total steps:", mode_steps, "\n")

# Calculate frequency of use
# Min: 8, Max: 62

frequency_use <- daily_activity_cleaned %>%
  group_by(Id) %>%
  summarise(total_id = n()) %>%
  arrange(Id)

cat("Minimum frequency of use:", min(frequency_use$total_id), "\n")
cat("Maximum frequency of use:", max(frequency_use$total_id), "\n")

# Classify users based on frequency of use
# light_user: 2 (6%), moderate_user: 28 (80%), active_user: 5 (14%)

user_classification <- frequency_use %>%
  mutate(user_classification = case_when(
    total_id >= 45 & total_id <= 62 ~ "active_user",
    total_id >= 27 & total_id <= 44 ~ "moderate_user",
    total_id <= 26 ~ "light_user"
  ))

cat("Number of light users:", sum(user_classification$user_classification == "light_user"), "\n")
cat("Number of moderate users:", sum(user_classification$user_classification == "moderate_user"), "\n")
cat("Number of active users:", sum(user_classification$user_classification == "active_user"), "\n")

# Average minutes of activity by user
# Users were primarily sedentary with lightly_active as the primary source of activity. 

avg_activity_by_user <- daily_activity_cleaned %>%
  group_by(Id) %>%
  summarise(
    avg_very_active_minutes = round(mean(VeryActiveMinutes, na.rm = TRUE), 2),
    avg_fairly_active_minutes = round(mean(FairlyActiveMinutes, na.rm = TRUE), 2),
    avg_lightly_active_minutes = round(mean(LightlyActiveMinutes, na.rm = TRUE), 2),
    avg_sedentary_minutes = round(mean(SedentaryMinutes, na.rm = TRUE), 2)
  )

avg_activity_by_user %>%
  arrange(desc(avg_sedentary_minutes))

# Classify users based on avg daily steps
# sedentary: 11, low_active: 7, somewhat_active: 10, active: 5, highly_active: 2

steps_classification <- daily_activity_cleaned %>%
  group_by(Id) %>%
  summarise(avg_totalsteps = round(mean(TotalSteps, na.rm = TRUE), 2)) %>%
  mutate(
    total_steps_classification = case_when(
      avg_totalsteps < 5000 ~ "sedentary",
      avg_totalsteps >= 5000 & avg_totalsteps <= 7499 ~ "low_active",
      avg_totalsteps >= 7500 & avg_totalsteps <= 9999 ~ "somewhat_active",
      avg_totalsteps >= 10000 & avg_totalsteps <= 12499 ~ "active",
      avg_totalsteps > 12499 ~ "highly_active"
    )
  )

steps_classification %>%
  arrange(avg_totalsteps)

# Average Steps by Day of the Week
# AVG: 7,407 steps per day

avg_steps_by_day <- daily_activity_cleaned %>%
  group_by(day_of_week) %>%
  summarise(avg_steps = mean(TotalSteps, na.rm = TRUE)) %>%
  arrange(day_of_week)

view(avg_steps_by_day)

# Average Calories Burned by Day of the Week
# AVG: 2,304 calories per day

avg_calories_by_day <- daily_activity_cleaned %>%
  group_by(day_of_week) %>%
  summarise(avg_calories_burned = mean(Calories, na.rm = TRUE)) %>%
  arrange(day_of_week)

view(avg_calories_by_day)

# Average Calories Burned by Hour of Day
# AVG: 96 calories per hour. Most active between 9AM and 8PM.

avg_calories_by_hour <- daily_activity_cleaned %>%
  mutate(hour_of_day = hour(ActivityDatetime)) %>%
  group_by(hour_of_day) %>%
  summarise(avg_calories_burned = mean(Calories, na.rm = TRUE)) %>%
  arrange(hour_of_day)

view(avg_calories_by_hour)

# Steps and Calories Burned Correlation

steps_calories_correlation <- daily_activity_cleaned %>%
  group_by(Id) %>%
  summarise(steps_calories_correlation = cor(TotalSteps, Calories, use = "complete.obs"))

view(steps_calories_correlation)

# Weekly Activity Analysis

weekly_activity_analysis <- daily_activity_cleaned %>%
  group_by(day_of_week) %>%
  summarise(
    avg_steps = mean(TotalSteps, na.rm = TRUE),
    avg_calories = mean(Calories, na.rm = TRUE)
  ) %>%
  arrange(desc(avg_steps))

view(weekly_activity_analysis)

# Sedentary Time vs. Total Active Time Per User
# AVG sedentary_ratio: 81%

sedentary_vs_active_time <- daily_activity_cleaned %>%
  group_by(Id) %>%
  summarise(
    total_sedentary_time = sum(SedentaryMinutes, na.rm = TRUE),
    total_active_time = sum(VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes, na.rm = TRUE),
    sedentary_ratio = total_sedentary_time / (total_sedentary_time + total_active_time)
  )

view(sedentary_vs_active_time)

# Average time awake in bed
# Min: 0 minutes, Max: 371 minutes, AVG: 40 minutes

avg_time_awake_in_bed <- sleepDay_merged %>%
  inner_join(daily_activity_cleaned, by = c("Id", "day_of_week")) %>%
  group_by(Id, day_of_week) %>%
  summarise(
    avg_totalsteps = mean(TotalSteps, na.rm = TRUE),
    avg_time_in_bed = round(mean(TotalTimeInBed, na.rm = TRUE), 2),
    avg_time_asleep = round(mean(TotalMinutesAsleep, na.rm = TRUE), 2),
    avg_time_awake = round(mean(TotalTimeInBed - TotalMinutesAsleep, na.rm = TRUE), 2)
  ) %>%
  arrange(desc(avg_time_awake))

view(avg_time_awake_in_bed)
