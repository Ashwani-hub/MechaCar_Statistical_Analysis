# MechaCar_Statistical_Analysis

## Project Overview:

AutosRUs' has requested for the review of the production data for insights that may help with manufacturing team using following analysis:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes '
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis.

## Resources:
- Data Sources:
    - MechaCar_mpg.csv
    - Suspension_Coil.csv
    
- Software: RStudio (Version: 1.4.1717)
            Console (Version: 4.1.0)
            
## Findings:

## Linear Regression to predict MPG:
  . Vehicle weight, spoiler_angle and AWD, provided non-random amount of variance to the mpg values in the dataset
  . Our P-value of less than 0.001 provides sufficient evidence to conclude that slope is not equal to zero
  . Based on our R-squared value of 71%, we can conclude that approximately 71% of the time the model will predict mpg values correctly.
  
## Summary Statistics on Suspension Coils:

Overall Statistical Summary (All Lots):
Mean = 1498.78, Median = 1500.00, Variance = 62.29 and Standard Deviation = 7.89

Statistical Summary by Lot
Lot #     Mean      Median    Variance    SD
Lot1      1500      1500      0.980       0.990
Lot2      1500      1500      7.47        2.73
Lot3      1496.14   1498.5    170.        13.0

summary: Current manufacturing data does not meet the design specification.
          Design specification dictates that the variance of the suspension coil must not exceed 100 PSI.
            Lot3 showing Variance over the Drawing specifications.

## T-Tests on Suspension Coils

. Based on the t-test completed for comparison of all manufacturing lots against mean PSI of the population, there is not enough evidence to reject the null hypothesis.
The two means are statistically similar.
. Based on the t-test completed for each lot against mean PSI of the population,
  - P-Value is less than significance level for Lot 1 and Lot 2; when compared against the population, therefore we have sufficient evidence to reject null hypothesis but for Lot 3 P-value is more than significance value and therefore we do not have sufficient evidence to reject the null hypothesis
  
## Study Design: MechaCar vs Competition.

When reviewing Cars for purchase, I believe, most people look for Horse power and mpg for comparison along with the cost of the vehicle. We can use null hypothesis stating MechaCar is not much different from the competition.
For evaluation we will use T-test and will require to collect the data from competitor vehicles for the selected data points. T-Tests will be done by comparing population of different vehicles.