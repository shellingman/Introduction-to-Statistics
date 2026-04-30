##Displaying and Summarizing Data##
##STAT 1200##

rm(list = ls()) #Remove all objects from the workspace

data("mtcars") #Imports mtcars data from base R
?mtcars

####Stem-and-Leaf####

#A value of scale=2 will split the stems and cause the 
#output to be roughly twice as long as the default.

?stem() #Get help
stem(mtcars$hp,scale = 1) 
#scale changes the length 

##Test scores example 2##

Tests <- c(93, 84, 86, 78, 95, 81, 72, 92, 87, 86, 79, 99, 81, 52)
stem(Tests)

#7|2
#7|8
#8|14
#8|6
#9|3
#9|5  

#New Example#

Tests2 <- c(93,84,86,78,95,81,72,66,78,89,94,34,93,45,66,78,23,76,88,90,64,73,82,66,96)
stem(Tests2)
stem(Tests2,scale = 2)





####Histogram####

?hist() #help
hist(mtcars$hp, xlab = "Horsepower", main = "Histogram of Horsepower from mtcars")

#Adjust the number of breaks#
hist(mtcars$hp, xlab = "Horsepower", main = "Histogram of Horsepower from mtcars", breaks = 2)

#Adjust the locations of the breaks#
hist(mtcars$hp, xlab = "Horsepower", main = "Histogram of Horsepower from mtcars", breaks = c(15,100,200,250,350))

#Adjust the limits
hist(mtcars$hp, xlab = "Horsepower", main = "Histogram of Horsepower from mtcars", xlim = c(50,250))


#Add density to the first plot
hist(mtcars$hp, xlab = "Horsepower", main = "Histogram of Horsepower from mtcars", prob=TRUE)
lines(density(mtcars$hp),col = 'blue')



## Using ggplot2 ##
library(ggplot2) #Need to load the ggplot2 package!


ggplot(mtcars, aes(x=hp)) + geom_histogram(binwidth = 10)+
  xlab("Horsepower")+
  ylab("Frequency")+
  ggtitle("Histogram of Horsepower from mtcars")


#Change the number of bins
ggplot(mtcars, aes(x=hp)) + geom_histogram(bins = 10)+
  xlab("Horsepower")+
  ylab("Frequency")+
  ggtitle("Histogram of Horsepower from mtcars")


#Add density 

ggplot(mtcars, aes(x=hp)) + geom_histogram(bins = 10,aes(y=..density..), colour="black", fill="white")+
  xlab("Horsepower")+
  ylab("Frequency")+
  ggtitle("Density of Horsepower from mtcars")+
  geom_density()


##Test scores example 3##

Tests.3 <- c(93, 84, 86, 78, 95, 81, 72, 93, 84, 78, 45, 71, 78, 95, 88)

hist(Tests.3,xlab = "Test Scores", main = "Histogram of Test Scores")

# ggplot() + aes(Tests3) + 
#   geom_histogram()+
#   xlab("")+
#   ylab("")+
#   ggtitle("Histogram of ")











####Bar graphs (Qualitative)####

#barplot for number of cylinders

?barplot() #help
?table() #help

#Base R
barplot(table(mtcars$cyl),xlab = "cylinders", ylab = "Frequency", main = "Barplot for Number of Cylinders")


#ggplot2
ggplot(data.frame(mtcars), aes(x=cyl)) +
  xlab("cylinders")+
  ylab("Frequency")+
  ggtitle("Barplot for Number of Cylinders")+
  geom_bar()

##Colours example 4##
# c('red', 'red', 'blue', 'green', 'green', 'orange', 'red', 'orange', 'yellow', 'green')







####Boxplots####

?boxplot() #help


#Boxplot of the horsepower in base R#

boxplot(mtcars$hp, ylab = "Horsepower", main = "Boxplot of Horsepower")
#Positive skew

#ggplot2

ggplot(data.frame(mtcars), aes(x=hp)) +
  ylab("Horsepower")+
  ggtitle("Boxplot of Horsepower")+
  geom_boxplot()


##Example 5##




##Comparative##

#Example 6#

#Base R#

boxplot(mtcars$hp ~ mtcars$cyl, ylab = "Horsepower", xlab = "Number of Cylinders", main = "Comparative Boxplot of Horsepower by Number of Cylinders")

#ggplot2

ggplot(data.frame(mtcars), aes(x=factor(cyl), y=hp)) +
  ylab("Horsepower")+
  xlab("Number of Cylinders")+
  ggtitle("Boxplot of Horsepower")+
  geom_boxplot()

