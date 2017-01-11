library(dplyr)
library(tidyr)
library(jsonlite)

cleaned_data <- read.csv2('data/autorisations-durbanisme-h-clean.csv', quote = "", stringsAsFactors = FALSE, encoding = 'utf-8')
filtered_data <- cleaned_data %>%
    select(geom, annee_depot) %>%
    filter(geom != '') %>%
    separate(geom, c('lat', 'long'), ', ', convert = TRUE) %>%
    sample_n(50, replace = FALSE)

write_json(filtered_data, 'sampled_data.json')
