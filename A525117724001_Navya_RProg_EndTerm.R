# End Term Practical
# Date: 4 December 24
# Author: Navya Tyagi

# Setting the working directory
setwd('D:/R_Codes')

# Section B
# 2A
heights=c(150, 160, 170, 180, 190, 200)

# i
filter=heights[heights>160 & heights<=190]
filter

# ii
filter=heights[heights!=170]
filter

# iii
check=any((heights)>180 | (heights)<160)
check

# iv
negate=(!(heights>170))
negate


# 2B

# iii
repeat {
  n=sample(1:10,1)
  print(n)
  if (n==7) {
    break
  }
}


# 2C
#age=1,4,16
age=as.numeric(readline(prompt = 'Enter your age ='))
if (age>=6 & age<=10) {
  print('Primary School')
} else if (age>=11 & age<=14) {
  print('Middle School') 
} else if (age>=15 & age<=18) {
  print('High School')
} else {
  print('Not in School')
}


# 2D
calculate_discount <- function(price, discount_rate) {
  final_price=price-(discount_rate*price)
  return(final_price)
}

# function test
price=100
discount_rate=0.2
final_price=calculate_discount(price, discount_rate)
print("Final Price is:")
final_price

# Function logic
# Discount is calculated by multiplying the discount rate and the price
# Then, it is subtracted from the original price 
# To calculate the final price after giving the discount

# 2E
study_hours=c(1, 2, 3, 4, 5)
test_scores=c(50, 60, 70, 80, 90)

# i 
# a: Scatter plot
plot(x=study_hours, y=test_scores, xlab='Study_hours', ylab='Test_scores',
     main='Study Hours Vs Test scores')

# b: line graph
plot(x=study_hours, y=test_scores, type='o', xlab='Study_hours', ylab='Test_scores',
     main='Study Hours Vs Test scores')

# c: barplot
barplot(test_scores, names.arg=study_hours, xlab='Study_hours', ylab='Test_scores',
        main='Test scores for each study hour', col=rainbow(length(study_hours)))

# d: box plot
boxplot(test_scores, data=study_hours, xlab='Study_hours', ylab='Test_scores',
        main='Test scores for given study hours', col='green')

# ii
# Combining multiple plots

# save the file
pdf('study_score_plots.pdf')

# One quadrant for each plot
par(mfrow = c(2, 2))
# a: Scatter plot
plot(x=study_hours, y=test_scores, xlab='Study_hours', ylab='Test_scores',
     main='Study Hours Vs Test scores')

# b: line graph
plot(x=study_hours, y=test_scores, type='o', xlab='Study_hours', ylab='Test_scores',
     main='Study Hours Vs Test scores')

# c: barplot
barplot(test_scores, names.arg=study_hours, xlab='Study_hours', ylab='Test_scores',
        main='Test scores for each study hour', col=rainbow(length(study_hours)))

# d: box plot
boxplot(test_scores, data=study_hours, xlab='Study_hours', ylab='Test_scores',
        main='Test scores for given study hours', col='green')

# Reset to default layout
par(mfrow = c(1, 1))


# Closing the graphical device
dev.off()
