#------ASSIGNMENT------#
# Author: Navya Tyagi
# Date: 29 NOvember 2024

# get working directory
getwd()
# set working directory
setwd('D:/R_Codes')


#-------------DATA STRUCTURES: HANDS-ON-------------#

# Task 1: Vector
# Numeric vector for Mathematics marks
math_marks = c(85, 75, 90, 60, 82, 70)
print("Mathematics Marks:")
print(math_marks)

# Calculate the average marks in Mathematics
avg_math_marks = mean(math_marks)
print("Average Mathematics Marks:")
print(avg_math_marks)

# Subset the vector (students 2, 4, and 6)
subset_math = math_marks[c(2, 4, 6)]
print("Subset Mathematics Marks (Students 2, 4, and 6):")
print(subset_math)


# Task 2: List
# Create a list with Science marks, student names, and a logical value
science_marks = c(78, 88, 85, 72, 95, 65)
student_names = c("Arjun", "Bhavna", "Charan", "Divya", "Esha", "Faisal")
has_above_90_english = any(c(92, 80, 89, 70, 88, 75) > 90)

my_list = list(ScienceMarks = science_marks, StudentNames = student_names, Above90InEnglish = has_above_90_english)
print("List Example:")
print(my_list)

# Access Science marks of the third student
science_third = my_list$ScienceMarks[3]
print("Science Marks of 3rd Student:")
print(science_third)

# Access the 4th student's name from the list
student_third = my_list$StudentNames[4]
student_third


# Task 3: Matrix
# Create a matrix for Mathematics, Science, and English marks
english_marks = c(92, 80, 89, 70, 88, 75)
marks_matrix = matrix(c(math_marks, science_marks, english_marks), nrow = 6, byrow = FALSE)
colnames(marks_matrix) = c("Mathematics", "Science", "English")
print("Marks Matrix:")
print(marks_matrix)

# Total marks for the first student
total_first_student = sum(marks_matrix[1, ])
print(paste("Total Marks for 1st Student:", total_first_student))

# Average marks in Science
avg_science_marks = mean(marks_matrix[, 2])
print(paste("Average Science Marks:", avg_science_marks))


# Task 4: Data Frame
# Create a data frame for Student marks
students_df = data.frame(
  StudentID = 1:6,
  StudentName = student_names,
  Mathematics = math_marks,
  Science = science_marks,
  English = english_marks
)

# Add a column for total marks
students_df$TotalMarks = students_df$Mathematics + students_df$Science + students_df$English
print("Student Data Frame with Total Marks:")
print(students_df)

# Filter students who scored more than 80 in English
filtered_students = subset(students_df, English > 80)
print("Students who scored more than 80 in English:")
print(filtered_students)


# Task 5: Array
# Convert the marks matrix into a 2x3x3 array (2 batches of 3 students each)
marks_array = array(marks_matrix, dim = c(2, 3, 3))
print("Marks Array:")
print(marks_array)

# Extract Mathematics and Science marks for Batch 2 (Students 4-6)
batch_2 = marks_array[, , 2]
print("Mathematics and Science Marks for Batch 2 (Students 4-6):")
print(batch_2)

# Increase the Science marks for Student 5 by 5
students_df$Science[5] = students_df$Science[5] + 5
print("Updated Science Marks for Student 5:")
print(students_df)


# Task 6: Factor
# Convert student names to a factor
student_names_factor = factor(students_df$StudentName)
print("Factor of Student Names:")
print(student_names_factor)

# Reorder the factor levels alphabetically
student_names_factor = factor(student_names_factor, levels = sort(levels(student_names_factor)))
print("Reordered Factor of Student Names:")
print(student_names_factor)



#-------------GRAPHICS IN R-------------#

# MATPLOT

# Read a CSV file into a data frame
data <- read.csv("Input/Sample_Data.csv")

# Display the first few rows of the data
head(data)

# Extract relevant columns
data_matrix <- as.matrix(data[, c("Age", "Height", "Weight")])

# Create the x-axis values
x <- data$Sno.No  

# Create the plot
matplot(x, data_matrix, type = "l", col = c("red", "blue", "green"), lty = 1, 
        xlab = "Sno.No.", ylab = "Values", main = "Matplot for Sample_Data")

matplot(x, data_matrix, type = "l", col = c("red", "blue", "green"), lty = 1,
        xlab = "Sno.No.", ylab = "Values", main = "Matplot with Legend")
legend("topright", legend = c("Age", "Height", "Weight"), col = c("red", "blue", "green"), lty = 1)

#In this example, the legend() function adds labels to the plot for each of the series, indicating which color corresponds to which series.

# LINE PLOT USING MATPLOT

# Extract relevant columns
# x <- data$Sno.No  
y <- as.matrix(data[, c("Height", "Weight")])  # Matrix with Height and Weight as columns

# Create the line plot using matplot()
matplot(x, y, type = "l", col = c("blue", "red"), lty = 1, 
        xlab = "Sno.No", ylab = "Values", main = "Line Plot with Points (Height & Weight)")

# Add points using matpoints() on the same plot
matpoints(x, y, pch = 15, col = c("blue", "red"), cex = 1.5)  


# DENSITY PLOT

# EXample 1
# Create the density object
density_height <- density(data$Height)

# Create the density plot
plot(density_height, main = "Density Plot of Height", xlab = "Height", ylab = "Density", col = "blue", lwd = 2)

# Example 2
# Create density objects for Height and Weight
density_height <- density(data$Height)
density_weight <- density(data$Weight)

# Plot the first density (Height)
plot(density_height, main = "Density Plots of Height and Weight", xlab = "Values", ylab = "Density", col = "blue", lwd = 2, xlim = c(min(data$Height, data$Weight), max(data$Height, data$Weight)))

# Add the second density plot (Weight)
lines(density_weight, col = "red", lwd = 2)

# Add a legend
legend("topright", legend = c("Height", "Weight"), col = c("blue", "red"), lwd = 2)


# DOT PLOT

# Example 1
# Create a basic dot plot
dotchart(data$Height, main = "Dot Plot of Height", xlab = "Height", col = "blue", pch = 19)

# Example 2
# Create a vertical dot plot for Weight
dotchart(data$Weight, main = "Dot Plot of Weight", ylab = "Weight", col = "green", pch = 17)

# Example 3

# Create the dot plot for Age
dotchart(data$Age, main = "Dot Plot of Age with Reference Line", xlab = "Age", col = "red", pch = 16)

# Add a reference line at the mean Age
abline(v = mean(data$Age), col = "blue", lwd = 2, lty = 2)
#dev.off()

# VENN DIAGRAMS
install.packages("VennDiagram")

# Load the VennDiagram package
library(VennDiagram)

# Create two sets
setA <- c("Apple", "Banana", "Cherry", "Date")
setB <- c("Cherry", "Date", "Elderberry", "Fig")

# Create a 2-set Venn diagram
venn.plot <- venn.diagram(
  x = list(A = setA, B = setB),   # Define the sets
  category.names = c("Set A", "Set B"),  # Labels for the sets
  filename = NULL,                 # Display the plot
  output = TRUE,
  main = "2-Set Venn Diagram"
)

# Draw the plot
grid.draw(venn.plot)

dev.off()


#Example 2

# Create three sets
setA <- c("Apple", "Banana", "Cherry", "Date")
setB <- c("Cherry", "Date", "Elderberry", "Fig")
setC <- c("Date", "Fig", "Grapes", "Honeydew")

# Create a 3-set Venn diagram
venn.plot <- venn.diagram(
  x = list(A = setA, B = setB, C = setC),  # Define the sets
  category.names = c("Set A", "Set B", "Set C"),  # Labels for the sets
  filename = NULL,  # Display the plot
  output = TRUE,
  main = "3-Set Venn Diagram"
)

# Draw the plot
grid.draw(venn.plot)
dev.off()

#Example 3

# Create four sets
setA <- c("Apple", "Banana", "Cherry", "Date")
setB <- c("Cherry", "Date", "Elderberry", "Fig")
setC <- c("Date", "Fig", "Grapes", "Honeydew")
setD <- c("Apple", "Elderberry", "Honeydew", "Kiwi")

# Create a 4-set Venn diagram
venn.plot <- venn.diagram(
  x = list(A = setA, B = setB, C = setC, D = setD),  # Define the sets
  category.names = c("Set A", "Set B", "Set C", "Set D"),  # Labels for the sets
  filename = NULL,  # Display the plot
  output = TRUE,
  main = "4-Set Venn Diagram"
)

# Draw the plot
grid.draw(venn.plot)

dev.off()


# GRID GRAPHICS

# Load the grid package
library(grid)

# Example 1
# Start a new page
grid.newpage()

# Draw a rectangle with specific position and size
grid.rect(gp=gpar(col="blue", fill="lightblue"))

# Draw a circle inside the rectangle
grid.circle(x=0.5, y=0.5, r=0.3, gp=gpar(col="red", fill="pink"))

# Add text inside the rectangle
grid.text("Hello, Navya!", x=0.5, y=0.5, gp=gpar(fontsize=16, fontface="bold"))

dev.off()

# Example 2
# Start a new page
grid.newpage()

# Draw a rectangle
grid.rect(gp=gpar(col="black", fill="white"))

# Draw a circle
grid.circle(x=0.3, y=0.7, r=0.1, gp=gpar(col="blue", fill="yellow"))

# Add some text inside the circle
grid.text("Inside", x=0.3, y=0.7, gp=gpar(fontsize=12, fontface="italic"))

# Draw a line
grid.lines(c(0.1, 0.9), c(0.1, 0.9), gp=gpar(col="red", lwd=2))

dev.off()

# Example 3
install.packages("gridExtra")

# Load gridExtra for arranging multiple grid plots
library(gridExtra)

# Create two separate grid objects
grid1 <- grid.rect(gp=gpar(fill="lightblue"))
grid2 <- grid.text("Panel 2", x=0.5, y=0.5, gp=gpar(fontsize=20))

# Arrange them side by side
grid.arrange(grid1, grid2, ncol=2)


# LATTICE
# Load lattice package
library(lattice)

# Example dataset
data(iris)

# Create a scatterplot of Sepal.Length vs Sepal.Width
# Conditioning on the Species variable (3 panels)
xyplot(Sepal.Length ~ Sepal.Width | Species, data = iris,
       main = "Sepal Length vs Sepal Width by Species",
       xlab = "Sepal Width", ylab = "Sepal Length")


# Create a boxplot to show Sepal.Length by Species
bwplot(Sepal.Length ~ Species, data = iris,
       main = "Boxplot of Sepal Length by Species",
       xlab = "Species", ylab = "Sepal Length")

# Create a histogram of Sepal.Length
histogram(~ Sepal.Length, data = iris,
          main = "Histogram of Sepal Length",
          xlab = "Sepal Length")

# Create a density plot of Sepal.Length by Species
densityplot(~ Sepal.Length | Species, data = iris,
            main = "Density Plot of Sepal Length by Species",
            xlab = "Sepal Length")

# Create a multiple panel plot for Sepal.Length vs Sepal.Width by Species
xyplot(Sepal.Length ~ Sepal.Width | Species, data = iris,
       type = c("p", "r"), # p for points, r for regression line
       layout = c(1, 3),    # 1 row, 3 columns for species panels
       main = "Sepal Length vs Sepal Width with Regression Lines")

# Combining multiple plots on one screen

# Set up the layout: 2 rows, 2 columns (row-wise filling)
par(mfrow = c(2, 2)) 

# Create plots
plot(1:10, main = "Scatterplot")           # Plot 1
hist(rnorm(100), main = "Histogram")       # Plot 2
boxplot(rnorm(10), main = "Boxplot")       # Plot 3
barplot(table(sample(letters[1:5], 100, replace = TRUE)),
        main = "Barplot")                  # Plot 4

# Reset to default layout
par(mfrow = c(1, 1)) 

# Example 2
# Define a layout: 3 plots with the first one spanning 2 rows
layout(matrix(c(1, 1, 2, 3), nrow = 2, byrow = TRUE))

# Create plots
plot(1:10, main = "Main Scatterplot")      # Large plot spanning 2 rows
hist(rnorm(100), main = "Histogram")       # Small plot
boxplot(rnorm(10), main = "Boxplot")       # Small plot

#example 3
library(ggplot2)
library(gridExtra)

# Create ggplot objects
p1 = ggplot(mtcars, aes(mpg, wt)) + geom_point() + ggtitle("Scatterplot")
p2 = ggplot(mtcars, aes(mpg)) + geom_histogram(binwidth = 2) + ggtitle("Histogram")
p3 = ggplot(mtcars, aes(factor(cyl), mpg)) + geom_boxplot() + ggtitle("Boxplot")

# Arrange the plots
grid.arrange(p1, p2, p3, ncol = 2)



#--------------Operators in R---------------#
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
