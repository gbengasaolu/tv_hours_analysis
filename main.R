library(tidyverse)
library(here)
library(dplyr)

gss_cat
<<<<<<< Updated upstream


tv_hours_table <- gss_cat %>%
  filter (age<30) %>%
  group_by(marital) %>%
  summarise(mean_tv_hours=mean(tvhours, na.rm = T))

=======
>>>>>>> Stashed changes

tv_hours_table <- gss_cat%>%
  filter(age>=30) %>%
  group_by(marital) %>%
  summarise(mean_tv_hours=mean(tvhours, na.rm = T))

write_csv(tv_hours_table, here("TV_hours_by_marital.csv"))

view("TV_hours_by_marital.csv")
