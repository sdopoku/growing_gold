# Load libraries
library(tidyr) # functions to clean data
library(readr) # functions to read and write data
library(dplyr) # functnions to manipulate data

# Set working directory to source file location
setwd(".")

# Get data
# Data source: Tabula PDF scraping of page 20 of Ghana Ministry of Agriculture
#              Facts and Figures 2012 (file: /datasets/sources/mofa_agriculture_facts_and_figures_2012.pdf ) 

dirty_oil_palm <- read_csv("../dirty_data/ghana_oil_palm_2003_2012_dirty.csv")

# View data
glimpse(dirty_oil_palm)
View(dirty_oil_palm)

# Remove empty rows/observations
dirty_oil_palm <- na.omit(dirty_oil_palm)

# Remove Sub-Total(row 6) and TOTAL (row 9) rows
dirty_oil_palm <- dirty_oil_palm[-c(6, 9),]

# Clean up Medium Scale Mills and Small-Scall and Other Private Holdings names
dirty_oil_palm <- dirty_oil_palm %>%
  mutate(Company = replace(Company, Company == "Medium\nScale Mills", "Medium-Scale Mills")) %>%
  mutate(Company = replace(Company, Company == "Small-Scale\nand Other\nPrivate\nHoldings", "Small-Scale and Private"))


# Turn wide data into long data
clean_oil_palm <- dirty_oil_palm %>% 
  gather(Year, `Production(mt)`, `2003` : `2012`) %>%
  arrange(Company)

# View data
glimpse(clean_oil_palm)
View(clean_oil_palm)

# Write data to CSV file
write_csv(clean_oil_palm, "../clean_data/ghana_oil_palm_2003_2012_clean.csv")
