# DATE: 25 October 2024
# AUTHOR: Navya Tyagi
# Data Structures: Matrix

setwd('D:/R_Codes')
getwd()

num1=23
num2=2.23
num3=5.0e3
num4=12L

class(num1)
class(num2)
class(num3)
class(num4)

# create a matrix
my_matrix=matrix(1:6, nrow=2, ncol=3)

# print the matrix
print(my_matrix)

dim(my_matrix)

nrow(my_matrix)

ncol(my_matrix)

#transpose
mat_trans=t(my_matrix)

dim(mat_trans)

# add/combine new column
n=c(7,8)
s=c(10,11,12)
comb_mat=cbind(my_matrix, n)
comb_mat1=rbind(my_matrix, s)
print(comb_mat)
print(comb_mat1)

row_sums=apply(my_matrix,1, sum)
print(my_matrix)
print(row_sums)

col_sums=apply(my_matrix,2, sum)
print(my_matrix)
print(col_sums)

# L apply: (Homework)

# find first/second element of the dimension of the matrix
dim(my_matrix)[1]
dim(my_matrix)[2]

row_avg=apply(my_matrix,1, mean)
print(my_matrix)
print(row_avg)

# diagonal matrix
diag_mat=diag(c(1,2,3))
print(diag_mat)

str(my_matrix)

# DATA FRAME
names=c("Navya", "Layba", "Gunjan")
ages=c(21, 23, 25)
heights=c(162, 160, 164)
my_df=data.frame(Name=names, Ages=ages, Height=heights)
print(my_df)

#structure
str(my_df)

#summary stats
summary(my_df)

# HW: summary output

head(my_df)
head(my_df, 2)

tail(my_df)
tail(my_df, 2)

nrow(my_df)
ncol(my_df)

sub_data=subset(my_df, Ages>23)
sub_data

my_df

#merge dataframe
#add_info=data.frame(Name=c("Navya","Layba"), Score=(65,54))

height_col=my_df$Height
height_col

avg_height=mean(my_df$Height)
avg_height

sum(my_df$Height)
