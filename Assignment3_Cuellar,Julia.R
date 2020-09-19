# Assignment: ASSIGNMENT 3
# Name: Cuellar, Julia
# Date: 9/20/2020

# Task 1
install.packages("ggplot2")
library(ggplot2)
theme_set(theme_minimal())

# Task 2
setwd("C:/Users/MACjac8/RStudio/dsc520")

# Task 3
heights_df = read.csv("data/r4ds/heights.csv")

# Task 4
ggplot(heights_df,aes(x = height,y = earn)) + geom_point()
ggplot(heights_df,aes(x = age,y = earn)) + geom_point()
ggplot(heights_df,aes(x = ed,y = earn)) + geom_point()

# Task 5
ggplot(heights_df,aes(x = height,y = earn)) + geom_point() + geom_smooth()
ggplot(heights_df,aes(x = age,y = earn)) + geom_point() + geom_smooth()
ggplot(heights_df,aes(x = ed,y = earn)) + geom_point() + geom_smooth()

# Task 6
ggplot(heights_df,aes(x = height,y = earn,col = "sex")) + geom_point()

# Task 7
ggplot(heights_df,aes(x = height,y = earn,col = "sex")) + geom_point() + ggtitle("Height vs. Earnings") + xlab("Height (Inches)") + ylab("Earnings (Dollars)")

# Task 8
ggplot(heights_df,aes(x = earn)) + geom_histogram()

# Task 9
ggplot(heights_df,aes(x = earn)) + geom_histogram(bins = 10)

# Task 10
ggplot(heights_df,aes(x = earn)) + geom_density()