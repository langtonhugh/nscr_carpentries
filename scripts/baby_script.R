# Notes:
# Credit to Methods@Manchester summer school (Reka Solymosi).
# https://rcatlord.github.io/GSinR/

# install.packages("babynames")

# Load packages.
library(tidyverse)
library(babynames) 

# Show data.
babynames

# Top six rows of data.
head(babynames)

# Wrangle data and make a plot.
babynames %>%                                                 # state the data
  filter(name == "Alex") %>%                                  # filter by Alex names
  ggplot(data = ., aes(x = year, y = n)) +                    # define the axis
  geom_line(aes(color = sex), size = 2) +                     # choose plot type
  scale_color_viridis_d(labels = c("Female", "Male")) +       # colour scheme and labels
  labs(title = "Babies named Alex between 1880 and 2015",     # labels
       x = "Year",                                            # labels
       y = "Frequency",                                       # labels
       caption = "Source: Social Security Administration",    # labels
       color = NULL) +                                        # no label
  theme_bw() +                                                # define theme
  theme(legend.position = "top")                              # move legend

# Save the last plot.
ggsave("visuals/baby_plot.png", height = 10, width = 16, unit = "cm", dpi = 300)