# MechaCar Statistical Analysis
 Technical analysis and statistical study using R
 
## Overview
Analysis looking at automotive manufacturer's production data to gain insights for manufacturing team. Performed multiple linear regression analysis on factors affecting miles per gallon fuel efficiency. Summarize statistics of PSI of suspension coils from manufacturing lots. Ran t-tests comparing manufacturing lots to population. Statistical study design to compare manufacturer's vehicles against the competition.

## Results

### Linear Regression to Predict MPG

Performed a multiple linear regression on manufacturer's mpg test results data for 50 prototype cars. Metrics analyzed were vehicle length, vehicle weight, spoiler angle, ground clearance and whether the car is All-Wheel-Drive or not.  

The regression analysis returned a r-squared value of 0.7149 indicating 71% of the variability of mpg variable is explained by looking at the other variables. The p-value of 5.35e-11 (0.0000000000535) is significantly smaller than our assumed significance level of 0.05%. This indicates significant evidence to reject our null hypothesis that there is no correlation between vehicle features to mpg. This also means that the slope of the linear model is not zero.

![mpg](/images/summary_mpg_multi_lin_reg.png)

Vehicle length and ground clearance provided a non-random amount of variance to the mpg. Vehicle length had the most impact with a Pearson's Correlation coefficient of 0.6095 indicating a Moderate strength of correlation. Ground clearance had less of a correlation with a factor of 0.3287 or a weak correlation. Vehicle weight, spoiler angle, and AWD indicator show a very weak or no correlation.

![mpg_cor](/images/mpg_cor.png)

The calculated r-squared value of 0.7149 of this linear model does a fair job of prediciting mpg of prototype cars but also indicates that there are most likely additional factors affecting mileage that should be investigated further in order to accurately predict mpg.

### Summary Statistics on Suspension Coils

