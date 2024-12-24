# date: 16 Sep 2024
# developer: Navya

# Chapter 2: R for basic statistics
# This code has a lot of statistical functions

# get working directory
getwd()
setwd('D:/R_Codes')
getwd()

# create a numeric vector
# c is concatenation
vec=c(4, 7, 1, 9, 5, 2, 6, 8, 3)
vec
print(vec)

vec1= 1:10
vec1

seq(20,30)
seq(0, 100, 10)


rep(5, 10)
rep('Navya', 4)

vec = seq(0.0,1.2,0.3)
vec
mean(vec)

mean((seq(0.0,1.2,0.3)))

# Calculate the mean
mean_value = mean(1:100)
mean_value

# Calculate the median
median_value = median(vec)
median_value

# Calculate the sum
sum_value = sum(vec)
sum_value

# Calculate the standard deviation
sd_value = sd(vec)
sd_value

# Calculate the variance
variance_value = var(vec)
variance_value

# Calculate the minimum and maximum
min_value = min(vec)
max_value = max(vec)
min_value
max_value

# Generate a summary of basic statistics
summary(vec)

vec
length(vec)


mat = matrix(1:10,2,5, byrow = TRUE)
mat
dim(mat)

x = seq(0,1,0.1)
length(x)
y = seq(0,100,10)
length(y)

plot(x,y)

# Create a histogram
hist(vec, main = "Histogram of Data", xlab = "Values", col = "lightblue", border = "black")
