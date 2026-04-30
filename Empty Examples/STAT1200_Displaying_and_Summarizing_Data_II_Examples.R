## Displaying and Summarizing Data II ##
##STAT 1200##

rm(list = ls()) #Remove all objects from the workspace

data("mtcars") #Imports mtcars data from base R
?mtcars

####Mean Example####

?mean() #Get help
mean(mtcars$hp) #Average horsepower

## Example 1 from slides ##

Scores <- c(93,84, 86, 78, 95, 81, 72, 93, 84, 78, 45, 71, 78, 95, 88)



####Median Example####

?median() #Get help
median(mtcars$hp) #median horsepower

## Example 2 from slides ##
#sort()

sort(Scores)

median(Scores)



##Histograms##

hist(mtcars$hp, main = "Histogram of Horsepower", xlab = "Horsepower")  # Draw histogram
abline(v = mean(mtcars$hp),                       # Add line for mean
       col = "red",
       lwd = 3)
abline(v = median(mtcars$hp),                       # Add line for median
       col = "blue",
       lwd = 3)
text(x =  250,                   # Add text for mean
     y =  8,
     paste("Mean =", mean(mtcars$hp)),
     col = "red",
     cex = 1)
text(x =  250,                   # Add text for median
     y =  7,
     paste("Median =", median(mtcars$hp)),
     col = "blue",
     cex = 1)



## Example 3 from slides ##


####Quartiles and Tertiles####
?quantile #help

#Quantile of HP
quantile(mtcars$hp)

#Tertiles of HP
quantile(mtcars$hp, probs = seq(0, 1, 1/3))



#Exams Example#


####Trimmed Mean####

#10% trimmed mean#
mean(mtcars$hp, trim=0.1)


## Example 4 from slides ##




####Sample Proportions####

#Proportion of cars with 6 cylinders#
sum(as.numeric(mtcars$cyl == 6))/nrow(mtcars)


## Example 5 from slides ##
# c('red', 'red', 'blue', 'green', 'green', 'orange', 'red', 'orange', 'yellow', 'green')





####Sample Variance and Standard Deviation####
?var()
?sd()

#Variance of HP#
var(mtcars$hp)
sd(mtcars$hp)


## Example 6 from slides ##



#Boxplot of the horsepower in base R#

boxplot(mtcars$hp, ylab = "Horsepower", main = "Boxplot of Horsepower")

