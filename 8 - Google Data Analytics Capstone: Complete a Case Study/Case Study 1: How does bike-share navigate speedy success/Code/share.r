#
# Share Data
#

# Visualize: Count of rides among member and casual users

ggplot(data = executive_summ, mapping = aes(x = member_casual, y = n, fill = member_casual)) +
  geom_bar(stat = "identity") +  
  labs(title = "User Count: Casual vs Member", x = "Membership Status", y = "Count of Rides") +
  scale_y_continuous(labels = scales::comma) +                                                
  geom_text(aes(label = paste0(n, " (", round(percentage, 2), "%)")), vjust = -0.3, size = 4, color = "black") +
  theme_minimal()

# Visualize: average ride_length by member_casual

ggplot(data = avg_ride_length_by_member_casual, mapping = aes(x=member_casual, y = avg_ride_length, fill=member_casual)) +
  geom_col() + 
  labs(title="Ride Trip Duration: Casual vs Member", x = "Membership Status", y = "Avg Ride Duration (Min)") +
  geom_text(aes(label = paste0(round(avg_ride_length, 2), " min")), vjust = -0.3, size = 4, color = "black") +
  theme_minimal()

# Visualize: Avg ride duration by day of the week member type.

ggplot(data = avg_ride_length_by_day_and_member, mapping = aes(x = as.factor(day_of_week), y=avg_ride_length, fill = member_casual)) + 
  geom_col(position = "dodge2") + 
  labs(title = "Average Ride Duration by Day of the Week and Membership Status", x = "Day of the Week", y = "Avg Ride Duration (Min)") +
  geom_text(aes(label = round(avg_ride_length, 1)), position = position_dodge2(width = 0.8), vjust = -0.5, size = 4, color = "black") +
  scale_x_discrete(labels = c("1" = "Sunday", "2" = "Monday", "3" = "Tuesday", "4" = "Wednesday", "5" = "Thursday", "6" = "Friday", "7" = "Saturday")) + 
  theme_minimal()

# Visualize: Number of rides by day of the week and membership status. 

ggplot(data = ride_count_by_day_and_member, mapping = aes(x = as.factor(day_of_week), y=ride_count, fill = member_casual)) + 
  geom_col(position = "dodge2") + 
  labs(title = "Number of Rides by Day of the Week and Membership Status", x = "Day of the Week", y = "Count of Rides") +
  geom_text(aes(label = round(ride_count, 1)), position = position_dodge2(width = 0.8), vjust = -0.5, size = 4, color = "black") +
  scale_y_continuous(labels = scales::comma) +                                                
  scale_x_discrete(labels = c("1" = "Sunday", "2" = "Monday", "3" = "Tuesday", "4" = "Wednesday", "5" = "Thursday", "6" = "Friday", "7" = "Saturday")) + 
  theme_minimal()

# Visualize: rideable_type by member_casual

ggplot(data = rideable_by_member, mapping = aes(x=member_casual, y=percentage, fill=rideable_type)) +
  geom_col() +
  labs(title = "Bike Types by Member Status", x = "Membership Status", y = "Percentage of Rides") +
  geom_text(aes(label = paste0(round(percentage, 2), "%")), position = position_stack(vjust = 0.5), size = 4, color = "black") + 
  theme_minimal()

