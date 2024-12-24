# Section B Practical
# Check working directory
getwd()
setwd('D:/R_codes')
getwd()

# read the csv file
data=read.csv('D:/R_codes/Input/Sample_Data.csv')

# first five rows of the dataset
head(data,5)

# last five rows in the dataset
tail(data,5)

# Dimensions of the dataset
dim(data)

# subset the dataset
data_subset=data[c(2,4,6)]
data_subset

# save this subset
write.csv(data_subset, 'D:/R_codes/Output/Q3_Outout_Data.csv')



# Section C
# create matrix
marks=c(98, 72, 56, 87, 76, 65, 88, 85, 90, 72, 78, 78, 56, 93, 89, 85, 96, 45, 
        67, 56, 89, 76, 84, 94, 73, 56, 79, 96, 77, 83)
student_matrix=matrix(marks, nrow = 10, ncol=3, byrow=TRUE)

#student_matrix

colnames(student_matrix) = c('Mathematics', 'Science', 'English')
rownames(student_matrix) = c('Anjali', 'Chandana', 'Garima', 'Nishtha', 'Layba',
                         'Taniya', 'Navya', 'Gunjan', 'Jyoti', 'Vandana')
print('Student matrix:')
student_matrix

# convert matrix into data frame
student_df=data.frame(student_matrix)
student_df

# print column names
colnames(student_df)

# print row names
rownames(student_df)

# dimensions of data frame
dim(student_df)

# Add a new column
student_df$Total=student_df$Mathematics+student_df$Science+student_df$English
student_df

# filter df
filtered_df=subset(student_df, Mathematics>50)
filtered_df

# save this output
write.csv(filtered_df, 'D:/R_codes/Output/Q5_Output_Data.csv' )
