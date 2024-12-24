# Date: 25 November 2024
# Author: Navya Tyagi
# Programming in R
setwd('D:/R_Codes')

# Operators in R
# Comparison Oerators
# Q1
ages=c(15, 22, 30, 18, 25, 40, 17)
ages_in_range <- ages[ages >= 18 & ages <= 25]
print(ages_in_range)

# Q2
num1=10 
num2=15
check_num=num1 < num2
check_num

# Q3
numbers=c(5, 12, 20, 40, 15, 25)
filter=numbers[numbers > 10 & (numbers%%5==0)]
filter

# Q4
vec1=c(1, 2, 3, 4, 5)
vec2=c(5, 4, 3, 2, 1)
check=vec1>vec2
check

# Logical Operators
# &: And; |: Or; !: Not
# Q5
ages=c(15, 22, 30, 18, 25, 40, 17)
ages_in_range <- ages[ages >= 18 & ages <= 25]
print(ages_in_range)

# Q6
x=c(TRUE, FALSE, TRUE, TRUE)
y=c(FALSE, TRUE, TRUE, FALSE)
print(x & y)
print (x | y)

# Q7
scores=c(45, 33, 50, 35, 60, 30)
students=scores[scores==35 | scores>40]
students

# Q8
temps=c(18, 32, 25, 15, 28, 35, 40)
temp_filter=temps[temps<20 | temps>30]
temps

# Conditional Execution
# Q1
num=5
if (num>0) {
  print('Positive')
} else if (num<0) {
  print('Negative')
} else {
  print('Zero')
}

# Q2
age = 15
if (age>=0 & age<=12) {
  print('Child')
} else if (age>=13 & age<=19) {
  print('Teenager')
} else if (age>=20 & age<=64) {
  print('Adult')
} else {
  print('Senior')
}

# Q3
num=15
ifelse((num%%2==0 & num%%3==0), 'Divisible by both 2 and 3', 'Not divisble by both 2 and 3')

# Q4
age=23
if (age>=18) {
  print('Eligible for Driving License')
} else {
  print('Not eligible for Driving License ')
}

# Q5
# Input: Ask for gender and age
#gender <- readline(prompt = "Enter your gender (Male/Female): ")
#age <- as.numeric(readline(prompt = "Enter your age: "))
gender='Male'
age=20
# Determine eligibility
if (gender == "Female" & age >= 18) {
  print("Eligible for marriage.")
} else if (gender == "Male" & age >= 21) {
  print("Eligible for marriage.")
} else {
  print("Not eligible for marriage.")
}

# Loops: hands-On
# 1
sum=0
for (i in 1:100) {
  sum=sum+i
}
print(sum)

# 2
n=1
while (n<=100) {
  n=n*2
  print(n)
}

# 3
#sample(1:100, 10)
repeat {
  n=sample(1:50,1)
  print(n)
  if (n>40) {
    break
  }
}

# 4
mat=matrix(0, nrow=4, ncol=4)
for (i in 1:4) {
  for (j in 1:4) {
    mat[i, j]= i+j
  }
}
print(mat)

#---#Apply hands-On#----#
# Q5
mat=matrix(1:10, nrow=2, ncol=5)
col_sum=apply(mat, 2, sum)
col_sum

# Q5
lis=list(c(3, 5, 7), c(1, 4, 6), c(2, 8, 10))
max_item=lapply(lis, function(x) max(x))
max_item

# Q6
l=c(5, 12, 17, 24)
div_check=sapply(l, function(x) x%%3==0)
div_check

# Q7
name=c('Alice', 'Bob')
age=c(25, 30)
combined_strings <- mapply(function(name, age) 
  {paste(name, " is ", age, " years old.")
}, names, age)
print(combined_strings)



# Functions: Hands on
# 1
add_two_numbers=function(a,b) {
  return(a+b)
}
sum=add_two_numbers(8, 12)
sum

# 2
area_of_rectangle=function(length, width) {
  return(length*width)
}
area=area_of_rectangle(5, 10)
area

# 3
check_number_sign=function(n) {
  if (n>0) {
    return('Positive')
  } else if (n<0){
    return ('Negative')
  } else {
    return ('Zero')
  }
}
check=check_number_sign(-4)
check


