# MechaCar_Statistical_Analysis

## Overview

The purpose of this analysis is to review the production data for insights that may help the manufacturing team to address production troubles which may blocking the progress of AutosRUs’ newest prototype, the MechaCar. The following tasks are to be completed: 

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Results


***Deliverable 1: Linear Regression to Predict MPG*** The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using knowledge of R, design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

## Linear Regression to Predict MPG

"Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?" According to the summary outpuut, the "ground_clearance" and "vehicle_length" (as well as the intercept) variables were statistically unlikely to provide random amounts of variance to the "mpg" values in the linear model. In other words, the "ground_clearance" and "vehicle_length" (as well as the intercept) variables have a significant impact on vehicle miles-per-gallon. Furthermore, "vehicle_weight" may also provide a slight amount of variance to "mpg" values, but not of noteable significance when considering a significance level of 0.05.

"Is the slope of the linear model considered to be zero? Why or why not?" The p-value of our hypothesis test is 5.35e-11. This is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis. This also means that the slope of our linear model is not zero.

"Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?" According to the multiple r-squared value of 0.7149, the multiple linear regression model will predict "mpg" values of MechaCar prototypes correctly approximately 71 percent of the time.


Figure 1:

![Image1](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D1.png)


***Deliverable 2: Linear Regression to Predict MPG*** The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using knowledge of R, create a summary statistics table to show; The suspension coil’s PSI continuous variable across all manufacturing lots, and the PSI metrics for each lot (mean, median, variance, and standard deviation).


## Summary Statistics on Suspension Coils

"The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?" According to the lot summary dataframe analysis, Lots 1 and 2 maintain suspension coil specifications within 100 pounds per square inch. However, Lot 3 exceeds those specifications by a variance of approximately 170 pounds per square inch. In total, the combined three lots are within the 100 pounds per square inch variance of design specifications for the MechaCar suspension coils.


Figure 2:

![Image2](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D2.png)


Figure 2.1:

![Image2.1](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D2.1.png)


Figure 2.2:

![Image2.2](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D2.2.png)


***Deliverable 3: T-Tests on Suspension Coils*** Using knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

## T-Tests on Suspension Coils

The p-values of Lots 1 and 2 are greater than the significance level of 0.05 which means we do not have sufficient evidence to reject the null hypothesis. Their mean PSI values were not statistically variant from the mean PSI of the population. However, the p-value of Lot 3 is below the significance level of 0.05 which means we do have sufficient evidence to reject the null hypothesis regarding this lot of suspension coil PSI values due the mean value being statistically variant from that of the mean PSI of the population.

In regard to all manufacturing lots, the t-test revealed a p-value of approximately 0.06 which is slightly higher than the significance level of 0.06. Which also means that we do not have sufficient evidence to reject that the mean PSI in that the mean PSI values were not statistically different from the population mean of 1,500 pounds per square inch.


Figure 3:

![Image3](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D3.png)


Figure 3.1:

![Image3.1](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D3.1.png)



***Deliverable 4: Design a Study Comparing the MechaCar to the Competition*** Using knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

## Study Design: MechaCar vs Competition

A statistical study comparing how MechaCar performs against the competition, which would be of interest to consumers, could focus the analysis data on driver and passenger comfort. Performance metrics being that of interior dimensions like: hip room, head room, leg room, and shoulder room in the first, second, or possible third rows. These metrics could focus on MechaCar's most fuel efficient prototype as a means to manufacture the vehicle surrounding a consumer's strongest selling points. 

The null hypothesis could be that there is no statistical difference of the interior dimensions between MechaCar and that of its competitor's vehicles with similar fuel efficiency. The alternative hypothesis could be that there is a statistical difference of the interior dimensions between MechaCar and that of its competitor's vehicles with similar fuel efficiency. A statistical test which could be used to test the hypothesis is the one-sample t-test which would determine whether there is a statistical difference between that of MechaCar and that of the population dataset of all comparable vehicles. Interior dimensions and fuel efficiency data could be procured from websites like [caranddriver.com.](https://www.caranddriver.com/)


Figure 4:

![Image4](https://raw.githubusercontent.com/krismbah/MechaCar_Statistical_Analysis/main/D4.jpg)
