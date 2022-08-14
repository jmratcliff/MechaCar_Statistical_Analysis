# MechaCar Statistical Analysis
 Technical analysis and statistical study using R and RStudio.
 
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

Analyzed the weight capacities of suspension coils from manufacturing data by production lot. Design specifications for MechaCar suspension coils dictate that the **variance not exceed 100 pounds per square inch**.

The overall population of suspension coils **meets** the variance threshold with a total variance of **62.3 PSI**

![summary_coils](/images/coil_summary.png)

In looking at the variance by production lot we find that Lots 1 and 2 meet the variance threshold however **Lot 3 exceeds** the limit with a **variance of 170.3 PSI**

![summary_coils_lot](/images/coil_lot_summary.png)

### T-Tests on Suspension Coils

T-tests were performed on the individual manufacturing lots vs. the total population for variances in PSI.

#### Lot 1

The p-value for Lot 1 = **1** which is **greater than** our confidence level of **0.05**. Therefore, we have enough evidence to accept our null hypothesis that the two means are **statistically similar**.

![ttest_lot1](/images/t_test_lot1.png)

#### Lot 2

The p-value for Lot 2 = **0.6072** which is **greater than** our confidence level of **0.05**. Therefore, we have enough evidence to accept our null hypothesis that the two means are **statistically similar**.

![ttest_lot2](/images/t_test_lot2.png)

#### Lot 1

The p-value for Lot 3 = **0.04168** which is **less than** our confidence level of **0.05**. Therefore, we have enough evidence to reject our null hypothesis, and accept the alternative hypothesis that the two means are **statistically different**.

![ttest_lot3](/images/t_test_lot3.png)


### Study Design: MechaCar vs Competition

A statistical study comparing maintenance cost of MechaCar vehicles vs other manufacturer's models is recommended.

**Metric** - average yearly maintenance cost
**Statistical Test** - two-sample t-Test. *to determine if the means of two samples (MechaCar and competition) are statistically different*

#### Null Hypothesis
There is no statistical difference between the average yearly maintenance cost of MechaCar vehicles and the competition's vehicles.
#### Alternative Hypothesis
There is a statistical difference between the average yearly maintenance cost of MechaCar vehicles and the competition's vehicles.

Recommendation is to obtain average yearly maintenance cost figures from a reliable source.
