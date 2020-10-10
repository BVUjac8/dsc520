# Assignment: ASSIGNMENT 6
# Name: Cuellar, Julia
# Date: 10/11/2020

# Task 1
setwd("C:/Users/MACjac8/RStudio/dsc520")

# Task 2
heights_df = read.csv("data/r4ds/heights.csv")

# Task 3
install.packages("ggplot2")
library(ggplot2)

# Task 4
age_lm = lm(heights_df$earn ~ heights_df$age)
age_lm

# Task 5
summary(age_lm)

# Task 6
age_predict_df = data.frame(earn = predict(age_lm,heights_df),age = heights_df$age)
age_predict_df

# Task 7
ggplot(data = heights_df,aes(y = earn,x = age)) + geom_point(color = 'blue') + geom_line(color = 'red',data = age_predict_df,aes(y = earn,x = age))
mean_earn = mean(heights_df$earn)
mean_earn

# Task 8
sst = sum((mean_earn - heights_df$earn)^2)
sst

# Task 9
ssm = sum((mean_earn - age_predict_df$earn)^2)
ssm

# Task 10
residuals = heights_df$earn - age_predict_df$earn
residuals

# Task 11
sse = sum(residuals^2)
sse

# Task 12
r_squared = ssm/sst
r_squared

# Task 13
n = age_predict_df
n
n = 500 + 692
n

# Task 14
p = 2

# Task 15
dfm = p - 1
dfm

# Task 16
dfe = n - p
dfe

# Task 17
dft = n - 1
dft

# Task 18
msm = ssm/dfm
msm

# Task 19
mse = sse/dfe
mse

# Task 20
mst = sst/dft
mst

# Task 21
f_score = msm/mse
f_score

# Task 22
adjusted_r_squared = 1 - (1 - r_squared) * (n - 1) / (n - p)
adjusted_r_squared

# Task 23
p_value = pf(f_score,dfm,dft,lower.tail = F)
p_value