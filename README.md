# MechaCar_Statistical_Analysis
## Overview

### Deliverable 1
### Linear Regression to Predict MPG
Which variables/coefficients provided non-random variance to the mpg values in the dataset?
* Vehicle Weight
* Spoiler Angle
* All Wheel Drive

Is the slope of linear model considered to be zero? Why or why not?
* The slope of this linear model is not considered to be zero. The p-value is 5.35e-11 which is much smaller than assumed significance of 0.05% which indicates there is sufficient evidence to reject our null hypothesis.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* This linear model has an r-squared value of 0.7149 which is not high enough to be accurately predictive.

![Deliverable 1 data](https://user-images.githubusercontent.com/96350410/162072143-5c7fdeef-99fd-41db-aa47-18e4f9eb0653.png)


#### Deliverable 2
#### Summary Statistics on Suspension Coils
The summary statistics shows a variance of 76 and does not exceed 100 pounds per inch of the design specifications.
![total summary](https://user-images.githubusercontent.com/96350410/162071616-bdae9dce-383b-4c16-bc24-785443fd244c.png)

![lot summary](https://user-images.githubusercontent.com/96350410/162071629-9419206e-7aa5-420e-a28d-3f4c47e782ac.png)

##### Deliverable 3
##### T-Tests on Suspension Coils
The following shows the summary of the t-test results across all manufacturing lots. The true mean is 1498.78. The p-value is 0.06 which is higher than the common significance level of 0.05 but there is not enough evidence to support rejecting the null hypothesis because all three of the lots are statistically similar.

![sample ttest](https://user-images.githubusercontent.com/96350410/162074871-775620cc-be39-4266-88f5-f425184fa3b9.png)

Lot 1 has a sample mean of 1500 and a p-value of 1 so we cannot reject the null hypothesis.

![lot1 ttest](https://user-images.githubusercontent.com/96350410/162074882-19ba9045-d35c-4e10-b79c-39248423285a.png)

Lot 2 has a mean of 1500.2 with a p-value of 0.61 so the null hypothosis cannot be rejected as they are statistically similar.

![lot2 ttest](https://user-images.githubusercontent.com/96350410/162074898-f9cf37b4-d4f4-461a-93c4-75825a53b79e.png)

Lot 3 shows a mean of 1496.14 and a p-value of 0.04 which is lower than the common significance level of 0.05 which indicates to reject the null hypothesis.

![lot3 ttest](https://user-images.githubusercontent.com/96350410/162074907-8474e9cb-1da0-46b9-8f3a-2500dfb23d96.png)

###### Deliverable 4
###### Study Design: MechaCar vs Competition
What metrics are you going to test?
* It would be important to understand what buyers look for, things like cost, fuel efficiency, design, color and service options. MPG, HP, color options and cost are all factors. The cost is probably one of the most important factors for consumers followed by MPG given the price of gas in the country right now. Some people find great importance in the color options and the design of the interior as well. 
What is the null hypothesis or alternative hypothesis?
* The null hypothesis does not show statistical relationship betwen units told and the price of a car. 
What statistical test would you use to test the hypothesis and why?
* I would use a linear regression model.
What data is needed to run the statistical test?
* We would want to know how many cars sold and at what price. These things would be important to understand for staffing and inventory needs and time of year sales are best.
