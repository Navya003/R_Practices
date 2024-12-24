# ------------------------------
# Classroom Marks Example in R
# ------------------------------

# Task 1: Vector
# Create a numeric vector for Mathematics marks
math_marks = c(85, 75, 90, 60, 82, 70)
print("Mathematics Marks:")
print(math_marks)

# Calculate the average marks in Mathematics
avg_math_marks = mean(math_marks)
print(paste("Average Mathematics Marks:", avg_math_marks))
#paste("Average Mathematics Marks:", avg_math_marks)

# Subset the vector (students 2, 4, and 6)
subset_math = math_marks[c(2, 4, 6)]
print("Subset Mathematics Marks (Students 2, 4, and 6):")
print(subset_math)

# ------------------------------
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
print(paste("Science Marks of 3rd Student:", science_third))

# Access the 4th student's name from the list

student_third = my_list$StudentNames[4]
student_third


# ------------------------------
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

# ------------------------------
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

# ------------------------------
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

# ------------------------------
# Task 6: Factor
# Convert student names to a factor
student_names_factor = factor(students_df$StudentName)
print("Factor of Student Names:")
print(student_names_factor)

# Reorder the factor levels alphabetically
student_names_factor = factor(student_names_factor, levels = sort(levels(student_names_factor)))
print("Reordered Factor of Student Names:")
print(student_names_factor)

