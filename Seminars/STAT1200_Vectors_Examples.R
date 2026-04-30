##Introduction Vectors in R##
##STAT 1200##

rm(list = ls()) #Remove all objects from the workspace


#### The Concatenate function####
?c() #help

x <- c(-2,0,3)
x[c(1, 3)] #first and 3rd
x[c(-1, -3)] #2nd

#Other data types#

Logical.Vector <- c(TRUE,TRUE,FALSE,TRUE)



####Sequence Function####
?seq() #help


Vector.1 <- 1:5
Vector.2 <- seq(from = 1, to = 5, by = 1)

Vector.1 == Vector.2 #Each element the same?



####Replicate Function####
?rep() #help


Vector.3 <- rep(3, times = 5)




#Example 1 from slides#



####Positional Indexing####

Vector.3[2] #Second element of Vector.3
Vector.3[-2] # Every element apart from position 2


#Example 2 from slides#





####Logical Indexing####

Vector.3[Vector.3 > 2] #to extract every element of Vector.3 greater than 2



#Example 3 from slides#




####Replacing Elements####

Vector.3[4] <- 400 #to replace the 4th element of Vector.3 with 400.

Vector.3[Vector.3 <= 3] <- 55 #to replace elements that are less than or equal to 3 with 55



####Ordering Elements####
?sort() #help
?rev() 
?order()

Vector.Sorted <- sort(Vector.1) #saves the sorted version of Vector.1

Vector.Sorted.Rev <- sort(Vector.1, decreasing = TRUE) #Largest to smallest

#The order() function#

Vector.5 <- c(3,5,2)
order(Vector.5)


#Slides Example 4#





####Operations####

Vector.Sorted + Vector.Sorted.Rev

Vector.5*Vector.1 #PROBLEMS!!


#Slides Example 5#





####Named Vectors####

#Example 6#

grades <- c(0.75,0.85,0.80,0.65)

print(grades) #print the grades

tasks <- c("Test","Assignment","Lab","Exam")

names(grades) <- tasks #assign the names

print(grades) #Now they are named




