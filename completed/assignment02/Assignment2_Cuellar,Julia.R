# Assignment: ASSIGNMENT 2
# Name: Cuellar, Julia
# Date: 9/13/2020

# Task 1
getwd()

# Task 2
dir()

# Task 3
setwd("C:/Users/MACjac8/RStudio/dsc520")

# Task 4
read.csv("data/tidynomicon/person.csv",sep = ",")
person_df1 = read.csv("data/tidynomicon/person.csv",sep = ",")
person_df1
str(person_df1)

# Task 5
read.csv("data/tidynomicon/person.csv",sep = ",", stringsAsFactors = FALSE)
person_df2 = read.csv("data/tidynomicon/person.csv",sep = ",", stringsAsFactors = FALSE)
person_df2
str(person_df2)

# Task 6
read.table("data/scores.csv",sep = ",")
scores_df = read.table("data/scores.csv",sep = ",")
scores_df
summary(scores_df)

# Task 7
install.packages("readxl")
library(readxl)

# Task 8
excel_sheets("data/G04ResultsDetail2004-11-02.xls")

# Task 9
read_excel("data/G04ResultsDetail2004-11-02.xls",sheet = "Voter Turnout")
assign("voter_turnout_df1",read_excel("data/G04ResultsDetail2004-11-02.xls",sheet = "Voter Turnout"))
voter_turnout_df1
voter_turnout_df1 = read_excel("data/G04ResultsDetail2004-11-02.xls",sheet = "Voter Turnout",skip = 1)
voter_turnout_df1
str(voter_turnout_df1)

# Task 10
read_excel("data/G04ResultsDetail2004-11-02.xls",sheet = "Voter Turnout",col_names = c("ward precint","ballots cast","registered voters","voter_turnout"),skip = 2)
assign("voter_turnout_df2",read_excel("data/G04ResultsDetail2004-11-02.xls",sheet = "Voter Turnout",col_names = c("ward precint","ballots cast","registered voters","voter_turnout"),skip = 2))
voter_turnout_df2
str(voter_turnout_df2)

# Task 11
install.packages("DBI")
library(DBI)

# Task 12
install.packages("RSQLite")
library(RSQLite)
drv = dbDriver("SQLite")
assign("db",dbConnect(drv, "data/tidynomicon/example.db"))
db

# Task 13
dbGetQuery(db,"SELECT * FROM PERSON;` SQL statement")
assign("person_df",dbGetQuery(db,"SELECT * FROM PERSON;` SQL statement"))
person_df
head(person_df)

# Task 14
dbListTables(db)
table_names = dbListTables(db)
table_names

# Task 15
tables = lapply(table_names,dbReadTable,conn = db)
print(tables)

# Task 16
dbDisconnect(db)

# Task 17
install.packages("jsonlite")
library(jsonlite)

#Task 18
toJSON(scores_df)

# Task 19
toJSON(scores_df,pretty = TRUE)
