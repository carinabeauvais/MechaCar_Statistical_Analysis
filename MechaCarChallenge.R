## Deliverable 1
#3 load dplyr package
library(dplyr)
#4 import and reac csv file as dataframe
library(tidyverse)
?read.csv
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#5 linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
#6 Determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))
# Eliminate independent variables with little impact on mpg:
lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg))

## Deliverable 2
#2 import and read csv file
mecha_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#3 Create total summary dataframe to get mean, median, variance and sd
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
#4 Create lot summary dataframe using group_by and summarize
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')
## Deliverable 3
#1. use t.test to determine if PSI is statistically different from the pop mean
t.test(mecha_coil$PSI,mu=1500)
#2 use t.test function with subset to determine if PSI for each manufacturing lot is statistically different.
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
