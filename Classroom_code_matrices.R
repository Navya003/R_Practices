checking_eng_greater_90


science_marks = c(78, 88, 85, 72, 95, 65)
student_names = c("Arjun", "Bhavna", "Charan", "Divya", "Esha", "Faisal")
checking_eng_greater_90 = (c(92, 80, 89, 70, 88, 75) > 90)


task2a = list(Science_marks = science_marks, Stud_Names = student_names, log_op = checking_eng_greater_90 )
task2a

list( name = c("Sushrutha", "Sandeep"), age = c(31,22) , prof = c("AP","Student"))


Names = c("Sushrutha", "Sandeep")
Age = c(31,22)
Professsion = c("AP","Student")

list( name = Names , age =  Age, prof = Professsion)

###MATRICES

M1 = matrix(1:9,nrow = 3, ncol = 3)
M2 = matrix(1:9,nrow = 3, ncol = 3, byrow = TRUE)
M3 = matrix(1:9,nrow = 2, ncol = 3, byrow = TRUE)
M4 = matrix(1:9,nrow = 5, ncol = 2, byrow = TRUE)

M5 = matrix(LETTERS,nrow = 2, ncol = 13, byrow = TRUE)
M5

M4

letters[5]
LETTERS

dim(M1)


#Handson on matrices
student_names = c("Arjun", "Bhavna", "Charan", "Divya", "Esha", "Faisal")

math_marks = c(85, 75, 90, 60, 82, 70)
science_marks = c(78, 88, 85, 72, 95, 65)
english_marks = c(92, 80, 89, 70, 88, 75)

data = cbind(math_marks, science_marks,english_marks )
data1 = c(math_marks, science_marks,english_marks )
data2 = my_list

matrix(data1, nrow = 6, ncol = 3)

Mat1 = matrix(data, nrow = 6, ncol = 3)
Mat1
colnames(Mat1) = c("math_marks", "science_marks", "english_marks")

Mat1

rownames(Mat1) = student_names

Mat1


Total_Marks = rowSums(Mat1)
Total_Marks[1]

Avg_Marks = rowMeans(Mat1)
Avg_Marks

mean(Mat1[1,])

#Find the average marks in each subject
Avg_Marks_In_Sub = colMeans(Mat1)
Avg_Marks_In_Sub





