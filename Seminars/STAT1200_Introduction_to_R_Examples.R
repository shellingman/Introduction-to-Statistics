##Introduction to R##
##STAT 1200##

rm(list = ls()) #Remove all objects from the workspace


####Creates a new section in your script####

##RStudio User Interface##
  # Console
  # Environment
  # History
  # Working Directory

####Packages####

if(!require(readr)) install.packages("readr") #If the package readr is not installed, 
                                              #then download readr
library(readr) #Initialize readr


####Arithmetic Operations####

5+4

2^3

4+3*2

7/3

7%/%3

# 4+5


####Assigning Variables####


x = 4
y <- x + 3
x+3

Variable.1 = y - x
Variable.2 = y/2


####Relational Operators####


x < y #less than

Variable.1 == y #equal to

Variable.2 != x #not equal to



####Base R Functions####

exp(y)

sqrt(x) #square root
sqrt(Variable.2)

sin(x)

abs(x-y) #absolute value

Vector.1 <- c(1,2,4,5,6,7,3) #Create a vector
mean(Vector.1) #mean


####Getting Help####

?sqrt #function help

?readr #readr package help
