#
# Share Data
#



# Visualize: Average Steps by Day of the Week
ggplot(avg_steps_by_day, aes(x = factor(day_of_week, levels = 1:7), y = avg_steps)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  geom_hline(aes(yintercept = mean(daily_activity$TotalSteps), color = "orange"), linetype = "dashed", show.legend = FALSE) +
  scale_y_continuous(labels = scales::comma) +      
  scale_x_discrete(labels = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")) +
  labs(title = "Average Steps by Day of the Week", x = "Day of the Week", y = "Average Steps") +
  geom_text(aes(label = scales::comma(round(avg_steps))), vjust = -0.3, size = 4, color = "black") +
  theme_minimal()

# Visualize: Average Calories Burned by Day of the Week
ggplot(avg_calories_by_day, aes(x = factor(day_of_week, levels = 1:7), y = avg_calories_burned)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  geom_hline(aes(yintercept = mean(daily_activity$Calories), color = "orange"), linetype = "dashed", show.legend = FALSE) +
  scale_y_continuous(labels = scales::comma) +  
  scale_x_discrete(labels = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")) +
  labs(title = "Average Calories Burned by Day of the Week", x = "Day of the Week", y = "Average Calories Burned") +
  geom_text(aes(label = scales::comma(round(avg_calories_burned))), vjust = -0.3, size = 4, color = "black") +
  theme_minimal()

# Visualize: Steps and Calories Correlation
ggplot(daily_activity_cleaned, aes(x = TotalSteps, y = Calories)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", color = "red", se = TRUE, size = 1.2) +
  labs(title = "Correlation Between Steps and Calories Burned", x = "Total Steps", y = "Calories Burned") +
  theme_minimal()

# Visualize: Weekly Activity Analysis
weekly_activity_analysis_long <- weekly_activity_analysis %>%
  pivot_longer(cols = c(avg_steps, avg_calories), names_to = "Metric", values_to = "Value")

ggplot(weekly_activity_analysis_long, aes(x = factor(day_of_week, levels = 1:7), y = Value, fill = Metric)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_x_discrete(labels = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")) +
  scale_fill_manual(values = c("avg_steps" = "skyblue", "avg_calories" = "coral"),
                    labels = c("Average Steps", "Average Calories")) +
  labs(title = "Weekly Activity Analysis", x = "Day of the Week", y = "Value") +
  theme_minimal()

# Visualize: Sedentary vs. Active Time Per User
ggplot(sedentary_vs_active_time, aes(x = total_active_time, y = total_sedentary_time)) +
  geom_point(alpha = 0.7, color = "blue") +
  labs(title = "Sedentary Time vs. Active Time Per User", x = "Total Active Time (Minutes)", y = "Total Sedentary Time (Minutes)") +
  theme_minimal()

# Visualize: Average Time Awake in Bed
ggplot(avg_time_awake_in_bed, aes(x = avg_time_awake, y = avg_time_in_bed)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Average Time Awake vs. Total Time in Bed", x = "Average Time Awake (Minutes)", y = "Average Time in Bed (Minutes)") +
  theme_minimal()

# Visualize: Total Time Asleep vs. Total Time in Bed

ggplot(data=sleepDay_merged, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) + 
  geom_point(alpha = 0.5, color="coral")+ 
  geom_smooth() + 
  labs(title="Total Minutes Asleep vs. Total Time in Bed", x = "Total Time Awake (Minutes)", y = "Total Time in Bed (Minutes)") +
  theme_minimal()

# Visualize: User Classification by Steps
ggplot(steps_classification, aes(x = factor(total_steps_classification, levels = c("sedentary", "somewhat_active", "low_active", "active", "highly_active")),, fill = total_steps_classification)) +
  geom_bar() +
  geom_text(aes(label = ..count..), stat = "count", vjust = -0.3, size = 4, color = "black") +
  labs(title = "User Classification by Total Steps", x = "Step Classification", y = "Count of Users") +
  theme_minimal()

