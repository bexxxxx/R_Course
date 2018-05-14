# Q1.1 
#𝑋 is normally distributed with some values for mean and varianc
#say, 𝑋~𝑁 (𝜇, 𝜎2). 
#The mean 𝜇 and variance 𝜎2 of the standard normal distribution are 0 and 1 respectively.
#Which value is the mean of 𝑌 = 𝑒𝑋 
exp(0-1/2)
exp(0+1/2)
x<-rnorm(1000)
y<-exp(x)
mean(y)
mean(exp(rnorm(1000)))

# Q1.2
#part 1 Construct a vector of length 2 that contains the solutions to 𝑋2 + 3𝑋 + 1 = 0            
#and display it on the screen with 1 decimal point.
a<-1
b<-3
c<-1
vector<-c((-b+sqrt(b^2-4*a*c))/(2*a),(-b-sqrt(b^2-4*a*c))/(2*a))
vector
options(digits=1)
vector

#part 2 Work out how much error you make (in percent) by referring to the solutions with just one decimal. 
#The result will be different for the two solutions.
c(-0.4,-2.6)/vector-1

# Q1.3
# Calculate mean and standard deviation of x.
#Plot a histogram of x.
#Put the second axis on the right side of the histogram plot instead of on the left.
options(digits=7)
set.seed(1234)
x<-rnorm(100, mean=.5, sd=.3)
mean(x)
sd(x)
hist(x)
hist(x,axes=FALSE, ylab="")
axis(4)
axis(1)

#quiz
set.seed(1)
x <- rnorm(100)
head(x)

x <- 5 : 6 

x <- 5 + 6 
y <- x + 3 
z <- y - 10 
