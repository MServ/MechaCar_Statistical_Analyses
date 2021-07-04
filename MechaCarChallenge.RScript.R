# Deliverable 1

# Dependencies
library(tidyverse)

# Import the mpg data
Mechacar_mpg_data <- read.csv("MechaCar_mpg.csv")

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mechacar_mpg_data)

# Summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mechacar_mpg_data))


# Deliverable 2

# Import the suspension coil data
suspension_data <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

# Create a total_summary DF using the summarize() function
total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create a lot_summary DF
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Deliverable 3

