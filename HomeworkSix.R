#Removing global environment
rm(list=ls())
#Settting working directory
setwd("/Users/ta4ha/Documents/Biocomputing/Biocomp-Fall2018-181005-Exercise6")

# Starting problem 1

# Defining a variable with the file to return lines from
iris <- read.csv(file="iris.csv")

# variable representing the number of 
# lines to be returned from the top of the indicated file

k <- 1:6
iris[k,]

k <- 1:10
iris[k,]


# Starting problem 2
# print the last 2 rows in the last 2 columns to the R terminal

dim(iris)

iris[149:150,4:5]

# get the number of observations for each 
# species included in the data set

table(iris$Species)

# get rows with Sepal.Width > 3.5

sepalW3.5 <- subset(iris, iris$Sepal.Width > 3.5)

sepalW3.5 

# write the data for the species setosa to a comma-delimited file names 'setosa.csv'

setosa <- subset(iris, iris$Species == 'setosa')

write.csv(setosa, file = "setosa.csv" )

# calculate the mean, minimum, and maximum of Petal.Length for observations of virginica

virginica <- subset(iris, iris$Species == 'virginica')

mean(virginica$Petal.Length)
max(virginica$Petal.Length)
min(virginica$Petal.Length)
