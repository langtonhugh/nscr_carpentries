# Load libraries.
library(crimedata)

# Download data.
crimes <- get_crime_data(years = 2017, type = "sample")

# What cities do we have?
distinct(crimes, city_name)

# Group_by example.
crimes %>% 
  group_by(city_name) %>% 
  summarise(crime_counts = n())

# Detroit example.
detroit_df <- read_csv("https://github.com/langtonhugh/nscr_graphics/raw/main/data/detroit_calls.csv")

# Calculate mean response time by priority.
mean_descriptive <- detroit_df %>% 
  group_by(priority) %>%
  summarise(mean_response = mean(totalresponsetime, na.rm = TRUE)) %>% 
  ungroup()

mutate_example <- detroit_df %>% 
  group_by(priority) %>%
  mutate(mean_response = mean(totalresponsetime, na.rm = TRUE)) %>% 
  ungroup()



