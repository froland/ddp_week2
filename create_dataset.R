library(dplyr)
library(tidyr)

cleaned_data <- read.csv2('data/autorisations-durbanisme-h-clean.csv', quote = "", stringsAsFactors = FALSE, encoding = 'utf-8')
filtered_data <- cleaned_data %>%
    select(geom, annee_depot) %>%
    filter(geom != '') %>%
    filter(annee_depot == 2016) %>%
    rename(year = annee_depot) %>%
    separate(geom, c('lat', 'long'), ', ', convert = TRUE)

write.table(filtered_data, 'data/planning_permission_locations.txt')
