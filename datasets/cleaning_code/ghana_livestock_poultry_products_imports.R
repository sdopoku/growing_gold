# Load libraries
library(tidyr)
library(readr)
library(dplyr)

# Set the working environmental to source file location
setwd(".")

# Get data
dirty_livestock_poultry_imports <- read_csv("../dirty_data/ghana_livestock_poultry_product_imports_2003_2012_dirty.csv")

# Look at data
glimpse(dirty_livestock_poultry_imports)
View(dirty_livestock_poultry_imports)


# Set column names
colnames(dirty_livestock_poultry_imports) <- c("Product", 2003:2012)

# Create category lists
bovine <- c("BEEF", "BUFFALO")
poultry <- c("CHICKEN", "TURKEY", "DUCK")
other <- c("CHEVON", "MUTTON", "PORK", "PROCESSED MEAT", "MILK")

# Delete rows: 1, 2, 5, 6, 7, 8, 12, 13, 14, 15, 17, 21, 23, 24
dirty_livestock_poultry_imports <- dirty_livestock_poultry_imports[
                                    -c(1, 2,5:8, 12:15, 17, 21, 23, 24 ),]

# Turn column 1 to lower case
#dirty_livestock_poultry_imports$Product <- 
  

# Turn data into dirty data set
clean_livestock_poultry_imports <- dirty_livestock_poultry_imports %>%
                                   gather("Year", `Amount (mt)`, `2003`:`2012`)  %>%
                                   arrange(Product)

# Add category column
# - Add Bovine category
clean_livestock_poultry_imports$Category[clean_livestock_poultry_imports$Product %in% bovine] <- "Bovine"

# - Add Poultry category
clean_livestock_poultry_imports$Category[clean_livestock_poultry_imports$Product %in% poultry] <- "Poultry"

# -Add Other category
clean_livestock_poultry_imports$Category[clean_livestock_poultry_imports$Product %in% other] <- "Other"




# Look at data
glimpse(clean_livestock_poultry_imports)
View(clean_livestock_poultry_imports)

# Save clean data
write_csv(clean_livestock_poultry_imports, "../clean_data/ghana_livestock_poultry_product_imports_2003_2012_clean.csv")
