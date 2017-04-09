# Load libraries
library(tidyr)
library(readr)
library(dplyr)

# Set working environment to source file location
setwd(".")

# Get data
dirty_non_trad_export <- read_csv("../dirty_data/ghana_main_non_traditional_exports_2002_2012_dirty.csv")

# Look at data
glimpse(dirty_non_trad_export)
View(dirty_non_trad_export)

# Delete empty rows: 2, 12, 18, 19 & 20
dirty_non_trad_export <- dirty_non_trad_export[-c(2,12, 18, 19, 20),]

# Delete last column: %Change(2012/2011)
dirty_non_trad_export <- dirty_non_trad_export %>%
                         select(X1:X12)

# Set row 1 to column names
colnames(dirty_non_trad_export) <- dirty_non_trad_export[1,]

# Delete row 1
dirty_non_trad_export <- dirty_non_trad_export[-1,]


# Convert dataset into tidy data
clean_non_trad_export <- dirty_non_trad_export %>%
                         gather("Year", `Value (USD Thousand)`, `2002`:`2012`) %>%
                         arrange(Commodity, Year)

# Look at data
glimpse(clean_non_trad_export)


# Convert Year column to integer
clean_non_trad_export$Year <- as.integer(clean_non_trad_export$Year)

# Look at data
glimpse(clean_non_trad_export)

# Convert Value (USD Thousand) column to numeric
# - remove commas
clean_non_trad_export$`Value (USD Thousand)` <- gsub("//,", "", clean_non_trad_export$`Value (USD Thousand)`)
# - change to numeric
clean_non_trad_export$`Value (USD Thousand)` <- as.numeric(clean_non_trad_export$`Value (USD Thousand)`)

# Look at data
glimpse(clean_non_trad_export)

# Create new commodity category column
# produce list of categories: horticultural; fish and seafoods; processed and industrial 
horticultural <- c("Pineapple", "Cotton Seed", "Kola nut", 
                   "Orange (Fresh)", "Vegetables", "Banana", 
                   "Mangoes", "Pawpaw", "Yam")

fish_and_seafoods <- c("Tuna Fish", "Fish (NES)", "Lobsters/Shrimps, etc",
                       "Processed Tuna", "Cuttle Fish/Octopus")

processed_and_industrial <- c("Cashew Nuts", "Cocoa Products", "Raw/Lint Cotton",
                              "Robusta Coffee", "Sheanuts")

# fill in Horticultural category
clean_non_trad_export$Category[clean_non_trad_export$Commodity %in% horticultural] <- "Horticultural"

# fill in Fish_And_Seafoods category
clean_non_trad_export$Category[clean_non_trad_export$Commodity %in% fish_and_seafoods] <- "Fish_And_Seafoods"

# fill in Processed_And_Industrial category
clean_non_trad_export$Category[clean_non_trad_export$Commodity %in% processed_and_industrial] <- "Processed_And_Industrial"

