# Deliverable 1

# Dependencies
library(tidyverse)

# Import the mpg data
Mechacar_mpg_data <- read.csv("MechaCar_mpg.csv")

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mechacar_mpg_data)

# Summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mechacar_mpg_data))