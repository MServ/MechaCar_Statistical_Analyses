# MechaCar_Statistical_Analyses
Statistical analysis of MechaCar performance using R

## Linear Regression to Predict MPG
![Summary Statistics of MechaCar mpg](https://github.com/MServ/MechaCar_Statistical_Analyses/blob/main/Deliv1_linreg_summary.png)

- Based on the summary statistics the linear regression model, ground clearance and vehicle length both provided non-random variance to the mpg in the dataset, as they have a p-value of significantly under 0.05.

- The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- This model's r-squared value is over 0.71 and p-value is well under 0.05, so it passes those tests, but the intercept's p-value is also significantly under 0.05. This suggests the model is subject to overfitting and does not predict the mpg of MechaCar prototypes effectively. This may mean that ground clearance and vehicle length may need scaling or transforming to improve the predictive model, or that there are variables not included.

## Summary Statistics on Suspension Coils
