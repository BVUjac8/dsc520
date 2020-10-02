# Assignment: ASSIGNMENT 5
# Name: Cuellar, Julia
# Date: 10/4/2020

# Task 1
setwd("C:/Users/MACjac8/RStudio/dsc520")

# Task 2
heights_df = read.csv("data/r4ds/heights.csv")

# Task 3
cor(heights_df$height,heights_df$earn)
cor(heights_df$age,heights_df$earn)
cor(heights_df$ed,heights_df$earn)

# Task 4
tech_spending = c(18079,18594,19753,20734,20831,23029,23597,23584,25525,27731,29449)
suicides = c(5427,5688,6198,6462,6635,7336,7248,7491,8161,8578,9000)
suicide_prevention_df = data.frame(tech_spending,suicides)
suicide_prevention_df
cor(suicide_prevention_df$tech_spending,suicide_prevention_df$suicides)