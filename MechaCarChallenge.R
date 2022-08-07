### Deliverable 1

#Use the library() function to load the dplyr package.
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform linear regression using the lm() function. In the lm() function,
#pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
MechaCar_mpg_lm <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCar_mpg_df)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(MechaCar_mpg_lm) 


### Deliverable 2

#Import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil_df <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean,
#median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary_df <- Suspension_Coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean,
#median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary_df <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


### Deliverable 3

#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots
#is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil_df$PSI,mu = 1500)

# T-test on Lot 1
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# T-test on Lot 2
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# T-test on Lot 3
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)




