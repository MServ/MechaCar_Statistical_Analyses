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

# Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI.
t.test(suspension_data$PSI, mu = 1500)

# Use the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 PSI.
manu_lot_1 <- subset(suspension_data, Manufacturing_Lot == 'Lot1')
t.test(manu_lot_1$PSI, mu = 1500)

manu_lot_2 <- subset(suspension_data, Manufacturing_Lot == 'Lot2')
t.test(manu_lot_2$PSI, mu = 1500)
  
manu_lot_3 <- subset(suspension_data, Manufacturing_Lot == 'Lot3')
t.test(manu_lot_3$PSI, mu = 1500)