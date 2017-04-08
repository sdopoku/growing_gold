# Load libraries
library(tidyr)
library(readr)
library(dplyr)

# Set working directory to source file location
setwd(".")

# Get data
dirty_agrochem_imports <- read_csv("../dirty_data/ghana_agrochemical_imports_2002_2010_dirty.csv")

# View data
glimpse(dirty_agrochem_imports)
View(dirty_agrochem_imports)

# Set column names 
colnames(dirty_agrochem_imports) <- c("Agrochemicals", 2002:2010)

# Delete rows 1, 2, 3 and 8(Total)
dirty_agrochem_imports <- dirty_agrochem_imports[-c(1:3, 8),]

# Look at data
glimpse(dirty_agrochem_imports)

# convert data in tidy set
clean_agrochem_imports <- dirty_agrochem_imports %>%
                          gather('Year', `Amount (mt)`, `2002`:`2010`)

# Look at data
glimpse(clean_agrochem_imports)
View(clean_agrochem_imports)

# Convert Year column into integer
clean_agrochem_imports$Year <- as.integer(clean_agrochem_imports$Year)

# Convert Amount (mt) column to numeric
# - replace commas
clean_agrochem_imports$`Amount (mt)` <- gsub("\\,", "", clean_agrochem_imports$`Amount (mt)`)
# - convert to numeric
clean_agrochem_imports$`Amount (mt)` <- as.numeric(clean_agrochem_imports$`Amount (mt)`)

# Look at data
glimpse(clean_agrochem_imports)
View(clean_agrochem_imports)

# Save data to clean_data folder
write_csv(clean_agrochem_imports, "../clean_data/ghana_agrochemical_imports_2002_2010_clean.csv")
