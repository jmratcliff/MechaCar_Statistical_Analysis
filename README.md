# MechaCar Statistical Analysis
 Technical analysis and statistical study using R
 
## Overview
Analysis looking at automotive manufacturer's production data to gain insights for manufacturing team. Performed multiple linear regression analysis on factors affecting miles per gallon fuel efficiency. Summarize statistics of PSI of suspension coils from manufacturing lots. Ran t-tests comparing manufacturing lots to population. Statistical study design to compare manufacturer's vehicles against the competition.

## Results

### Linear Regression to Predict MPG

Performed a multiple linear regression on manufacturer's mpg test results data for 50 prototype cars. Metrics analyzed were vehicle length, vehicle weight, spoiler angle, ground clearance and whether the car is All-Wheel-Drive or not.  

The regression analysis returned a r-squared value of 0.7149 indicating 71% of the variability of mpg variable is explained by looking at the other variables. The p-value of 5.35e-11 (0.0000000000535) is significantly smaller than our assumed significance level of 0.05%. This indicates significant evidence to reject our null hypothesis that there is no correlation between vehicle features to mpg. This also means that the slope of the linear model is not zero.

![summary mpg regression]summary_mpg_multi_lin_reg.png

