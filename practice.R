getwd()

# Practice
# Task 1
maths_marks=c(85, 75, 90, 60, 82, 70)
print("Mathematics marks:")
maths_marks

average_marks=mean(maths_marks)
print("Average Maths marks:")
average_marks

subset_maths=maths_marks[c(2,4,6)]
print("Subset Mathematics Marks (Students 2, 4, and 6):")
print(subset_math)

# Task 2: List
science_marks = c(78, 88, 85, 72, 95, 65)
student_names = c("Arjun", "Bhavna", "Charan", "Divya", "Esha", "Faisal")
has_above_90_english=any(c(92, 80, 89,ss 70, 88, 75)>90)
student_list=list(Student_names=student_names, Science_marks=science_marks,Above_90_in_English=has_above_90_english)
print("List")
student_list

third_science=student_list$Science_marks[3]
third_science

# Task 3
english_marks=c(92, 80, 89, 70, 88, 75)
marks_matrix=matrix(c(maths_marks, science_marks, english_marks), nrow=6, byrow = FALSE)
colnames(marks_matrix) = c("Mathematics", "Science", "English")
print("Marks Matrix:")
print(marks_matrix)

total_first_student=sum(marks_matrix[1,])
total_first_student

average_science_marks=mean(marks_matrix[,2])
average_science_marks

# Task 4
student_df=data.frame(
  Student_Id=1:6, 
  Student_name=student_names,
  Mathematics = math_marks,
  Science = science_marks,
  English = english_marks)
student_df

student_df$Total_marks=student_df$Mathematics+student_df$Science+student_df$English
student_df

filter=subset(student_df, English>80)
filter

# Convert the marks matrix into a 2x3x3 array (2 batches of 3 students each)
marks_array = array(marks_matrix, dim = c(2, 3, 3))
print("Marks Array:")
print(marks_array)

batch_2 = marks_array[, , 2]
print("Mathematics and Science Marks for Batch 2 (Students 4-6):")
print(batch_2)

students_df$Science[5] = students_df$Science[5] + 5
print("Updated Science Marks for Student 5:")
print(students_df)

student_names_factor = factor(students_df$StudentName)
print("Factor of Student Names:")
print(student_names_factor)

# Reorder the factor levels alphabetically
student_names_factor = factor(student_names_factor, levels = sort(levels(student_names_factor)))
print("Reordered Factor of Student Names:")
print(student_names_factor)

