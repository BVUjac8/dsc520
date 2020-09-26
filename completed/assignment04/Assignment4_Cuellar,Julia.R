# Assignment: ASSIGNMENT 4
# Name: Cuellar, Julia
# Date: 9/27/2020

# Task 1
install.packages("ggplot2")
library(ggplot2)
theme_set(theme_minimal())

# Task 2
setwd("C:/Users/MACjac8/RStudio/dsc520")

# Task 3
heights_df = read.csv("data/r4ds/heights.csv")

# Task 4
ggplot(heights_df,aes(x = sex,y = earn)) + geom_point() + geom_boxplot()
ggplot(heights_df,aes(x = race,y = earn)) + geom_point() + geom_boxplot()

# Task 5
ggplot(heights_df,aes(sex)) + geom_bar()

# Task 6
ggplot(heights_df,aes(race)) + geom_bar()

# Task 7
ggplot(heights_df,aes(race)) + geom_bar() + coord_flip()

# Task 8
covid_df = read.csv("data/nytimes/covid-19-data/us-states.csv")

# Task 9
covid_df$date = as.Date(covid_df$date)

# Task 10
california_df = covid_df[which(covid_df$state == "California"),]
ny_df = covid_df[which(covid_df$state == "New York"),]
florida_df = covid_df[which(covid_df$state == "Florida"),]

# Task 11
ggplot(data = florida_df,aes(x = date,y = state,group = 1)) + geom_line()

# Task 12
ggplot(data = florida_df,aes(x = date,group = 1)) + geom_line(aes(y = cases)) + geom_line(data = ny_df,aes(y = cases)) + geom_line(data = california_df,aes(y = cases))

# Task 13
ggplot(data = florida_df,aes(x = date,group = 1)) + geom_line(aes(y = cases),color = "darkred") + geom_line(data = ny_df,aes(y = cases),color = "darkgreen") + geom_line(data = california_df,aes(y = cases),color = "steelblue")

# Task 14
ggplot(data = florida_df,aes(x = date,group = 1)) + geom_line(aes(y = cases, colour = "Florida")) + geom_line(data = ny_df,aes(y = cases,colour = "New York")) + geom_line(data = california_df,aes(y = cases,colour = "California")) + scale_colour_manual("",breaks = c("Florida","New York","California"),values = c("darkred","darkgreen","steelblue")) + xlab(" ") + ylab("Cases")

# Task 15
ggplot(data = florida_df,aes(x = date,group = 1)) + geom_line(aes(y = cases,colour = "Florida")) + geom_line(data = ny_df,aes(y = cases,colour = "New York")) + geom_line(data = california_df,aes(y = cases,colour = "California")) + scale_colour_manual("",breaks = c("Florida","New York","California"),values = c("darkred","darkgreen","steelblue")) + xlab(" ") + ylab("Cases") + scale_y_log10()