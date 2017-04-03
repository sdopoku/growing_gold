

# Load libraries
library(dplyr) # functions to manipulate data
library(tidyr) # functions to clean data
library(readr) # functions to read and write data

# Set working directory to source file location
setwd(".")

# Get data
oil_palm <- read_csv("ghana_oil_palm_2003_2012_original.csv")

# View data
glimpse(oil_palm)
View(oil_palm)


# Remove empty rows/observations
oil_palm <- na.omit(oil_palm)

# Remove Sub-Total(row 6) and TOTAL (row 9) rows
oil_palm <- oil_palm[-c(6, 9),]

# Change company abbreviations to full names
oil_palm$Company <- c("Ghana Oil Palm Development Company Limited",
                      "Benso Oil Palm Production Limited",
                      )

# Turn wide data into long data
long_oil_palm <- oil_palm %>% 
  gather(Year, `Production(mt)`, `2003` : `2012`) %>%
  arrange(Company)


# View data
View(long_oil_palm)


# Write data to CSV file
write_csv(long_oil_palm, "ghana_oil_palm_2003_2012_cleaned.csv")
