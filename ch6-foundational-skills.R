library(tidyverse)
library(dataedu)
library(skimr)
library(janitor)

dataedu::ma_data_init
dataedu::ma_data_init -> ma_data
ma_data_init <- dataedu::ma_data_init

names(ma_data_init)
glimpse(ma_data_init)
summary(ma_data_init)
glimpse(ma_data_init$Town)
summary(ma_data_init$Town)
glimpse(ma_data_init$`AP_Test Takers`)
summary(ma_data_init$`AP_Test Takers`) 

# ctrl + shift + M -> pipe shortcut
ma_data_init %>% 
  group_by(`District Name`) %>% 
  count()

ma_data_init %>% 
  group_by(`District Name`) %>% 
  count() %>% 
  filter(n > 10)

ma_data_init %>% 
  group_by(`District Name`) %>% 
  count() %>% 
  filter(n > 10) %>% 
  arrange(desc(n))

ma_data_init %>% 
  rename(district_name = `District Name`,  grade = Grade) %>% 
  select(district_name, grade)

# naming variables, can't contain space, begin with number, begin with $
ma_data_01 <- 
  ma_data_init %>% 
  clean_names()
  
  
