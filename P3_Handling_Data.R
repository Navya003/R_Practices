#Checking the current directory
getwd()
#Setting your working directory
setwd("D:/R_Codes")

#Reading a file
data = read.csv(file = "Input/Sample_Data.csv")

#Checking the first rows
head(data)
head(data, 2)

#Checking the last rows
tail(data)
tail(data, 2)

#Dimension or size of the data
dim(data)


colnames(data)
rownames(data)

#Accessing the data
data[,1] # 1st column
data[1,] # 1st row

sum(data[,1])
sd(data[,1])
mean(data[,1])

summary(data)
summary(data[,9])

barplot(data[,9])
plot(data[,1], data[,9])

#Subsetting the data
col = c(2:4,6,8:10)

data1 = data[,c(2,3,4,6,8,9,10)]
data1
colnames(data1)
data2 = data[,-c(1,5,7)]
colnames(data2)

data1 = data[,col]
dim(data1)

table(data2[,7])
table(data2[,5])

colnames(data)
table(data[,7])

data3 = data[,c(2,3)]

getwd()

head(data3)
write.csv(data3, file = "/Users/sushrutha/Desktop/Amity_2024/Sem1_R_Programming/Sem1_R_Prog/Output/Sample_Data_Subset.csv")
