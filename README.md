# MechaCar_Statistical_Analyses
Statistical analysis of MechaCar performance using R

## Linear Regression to Predict MPG
![Summary Statistics of MechaCar mpg](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/Deliv1_linreg_summary.png)

- Based on the summary statistics the linear regression model, ground clearance and vehicle length both provided non-random variance to the mpg in the dataset, as they have a p-value of significantly under 0.05.

- The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- This model's r-squared value is over 0.71 and p-value is well under 0.05, so it passes those tests, but the intercept's p-value is also significantly under 0.05. This suggests the model is subject to overfitting and does not predict the mpg of MechaCar prototypes effectively. This may mean that ground clearance and vehicle length may need scaling or transforming to improve the predictive model, or that there are variables not included.

## Summary Statistics on Suspension Coils
_The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch._

Statistics of all combined suspension coil manufacturing lots' PSI
![Summary of All Manufacturing Lot Statistics](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/D2_total_summary.png)

Statistics of each individual suspension coil manufacturing lot's PSI
![Summary of Each Manufacturing Lot Statistics](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/D2_lot_summary.png)

According to the design specifications of needing a variance of less than 100 PSI, the combined variance of all manufacturing lots (var=62) as well as the variance of lots 1 (var=1) and 2 (var=7) are within acceptable bounds. However, lot 3 has a variance of 170, which is well beyond meeting design specifications.

## T-Tests on Suspension Coils
_Assume significance of 0.05_

T-test for all manufacturing lots
![t-test of all lots](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/All_Lots_ttest.png)

Based on a p-value of 0.06 we do not reject the null hypothesis of the mean being similar to 1,500.

T-test for manufacturing lot 1
![t-test of lot 1](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/Lot1_ttest.png)

Based on a p-value of 1 we _definitely_ do not reject the null hypothesis of the mean being similar to 1,500.

T-test for manufacturing lot 2
![t-test of lot 2](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/Lot2_ttest.png)

Based on a p-value of 0.06 we do not reject the null hypothesis of the mean being similar to 1,500.

T-test for manufacturing lot 3
![t-test of lot 3](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/Lot3_ttest.png)

Based on a p-value of 0.04 we reject the null hypothesis of the mean being similar to 1,500. This suggests that there are manufacturing issues in lot 3.

## Study Design: MechaCar vs Competition
To compare MechaCars to the industry standard of other manufacturers' vehicles we could look at many factors that are important to consumers.

### Study Metrics
Here we will only compare city fuel efficiency between Mechacar's vehicle(s) and the industry standard of the same class of vehicles.

### Hypothesis
The null hypothesis is Mechacar's city fuel efficiency is not significantly different from the industry standard.
The alternative hypothesis is Mechacar's city fuel efficiency is significanctly different from the industry standard.

### Statistical Tests
Given that there are two sets of data to compare, we would likely best be suited to perform a two-sample t-test on the data needed below.

### Needed Data
We would require the city fuel efficiency data of both Mechacar's vehicle(s) and the industry standard of the same class of vehicles.
