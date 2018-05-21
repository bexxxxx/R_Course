# Q2.1
#Study the function paste() via its help page and use it to paste together the string ”R session” and the number 1. What type of object is returned?
## character object
#What happens if we try to add a number to a data frame containing only numbers?
## the number is added elementwise to the data frame.
#What happens if we try to add a number to a data frame with both number columns and factor columns?
## R doesn’t know how to add an A and a 2
paste("R session", 1)
data.frame(x=1:3,y=4:6)
data.frame(x=1:3,y=4:6)+2
data.frame(x=1:3,y=c("A","B","C"))
data.frame(x=1:3,y=c("A","B","C"))+2

# Q2.2
#Create a function that takes a vector of numbers and returns the standardized values; ie. the data with the mean subtracted and rescaled so that the variance is 1.
standard.val.function<- function(x){(x-mean(x))/sd(x)}
set.seed(87)
y<-rnorm(100,2,5)
mean(y)
var(y)
z<-standard.val.function(y) 
mean(z)
var(z)

plot(y,z)
#Describe what happens if you apply your function to a vector of length 1, and why.
# NA bc SD of a single number is 0
standard.val.function(3) 

# Q2.3
#Define a similar function f in R. Calculate f(0) f(-1) f(pi)
#Write a script that plots the function over the interval from -7 to 7. Save the script on your system and close it. 
#Then, execute the script in R with the source() command
my.function<-function(x){(3*sin(x/2))+x}
my.function(0)
my.function(-1)
my.function(pi)
curve(my.function,-7,7)
source("/Users/RebeccaReilly/github/r_course/2_Functions.R")

#Quiz
x <- c("b", 2,  TRUE) #the type is character vector
y <- c(1, 2, 3.14, 4, 5) #gives numbers 2 decimals
z <- c(FALSE, TRUE, 2, 3, 4) # output is 0 1 2 3 4 
matrix(c(5,4,3,2,1,0)+2,nrow=2)<5

#Lab
my.display<-function(x, display=T, type="hist"){
  cat("Summary of input: \n")
  return(summary(x))
}
set.seed(1234)
my.data<-rnorm(200)
my.display(my.data)
my.display(my.data,display=TRUE,type="hist")
