# Load libraries
library(tidyr)
library(readr)
library(dplyr)

# Set Working Directory
setwd(".")

# Get Data
dirty_fertilizer <- read_csv("../dirty_data/ghana_fertilizer_import_2002_2012_dirty.csv")


# View data
glimpse(dirty_fertilizer)
View(dirty_fertilizer)

# make dataset a data frame
dirty_fertilizer <- data.frame(dirty_fertilizer)

# Delete last 2 rows
dirty_fertilizer <- dirty_fertilizer[-c(13, 14),]

# Set column names to 1st row
colnames(dirty_fertilizer) <- dirty_fertilizer[1,]

# delete 1st row
dirty_fertilizer <- dirty_fertilizer[-1,]

# transpose data: move rows to columns and columns to rows
dirty_fertilizer <- t(dirty_fertilizer)

# Set row 1 to column names
colnames(dirty_fertilizer) <- dirty_fertilizer[1,]


# delete row 1
dirty_fertilizer <- dirty_fertilizer[-1,]

# delete total row i.e last row
dirty_fertilizer <- dirty_fertilizer[-10,]



# look at structure of data
glimpse(dirty_fertilizer)

# convert data into data frame 
dirty_fertilizer <- data.frame(dirty_fertilizer)

# assign correct column names
colnames(dirty_fertilizer) <- 2002: 2012

# look at structure of data
glimpse(dirty_fertilizer)

# add fertilizer name column
dirty_fertilizer$Fertilizer <- c("NPK", "Urea", "Muriate of Potash",
                                 "Sulphate of Ammonia", "SSP_and_TSP", "Nitrate",
                                 "Potassium Sulphate", "Cocoa Fertilizer", "Others")

View(dirty_fertilizer)

# convert data into tidy data
clean_fertilizer <- dirty_fertilizer %>%
                    gather("Year", `Amount (mt)`, `2002`:`2012`) %>%
                    arrange(Year, Fertilizer)

# look at data
View(clean_fertilizer)
glimpse(clean_fertilizer)

# set Year column to integer
clean_fertilizer$Year <- as.integer(clean_fertilizer$Year)

# look at data
glimpse(clean_fertilizer)

# set Amount (mt) column to numbers
# - replace commas 
# - set values to numeric
clean_fertilizer$`Amount (mt)` <- gsub("\\,", "", clean_fertilizer$`Amount (mt)`)
clean_fertilizer$`Amount (mt)` <- as.numeric(clean_fertilizer$`Amount (mt)`)

# look at data
glimpse(clean_fertilizer)

# save clean data in file
write_csv(clean_fertilizer, "../clean_data/ghana_fertilizer_import_2002_2012_clean.csv")
