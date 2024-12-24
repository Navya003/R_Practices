# Numeric Data Type Functions

# get working directory
getwd()
setwd('D:/R_Codes')
getwd()

# Assign numeric values
age = 21
height = 162

# 1. Absolute Value
abs_value = abs(-age)  # Returns 30

# 2. Sum of Values
total = sum(age, height)  # Returns 188.5

# 3. Mean of Values
average = mean(c(age, height))  # Returns 94.25

# 4. Square Root
square_root_height = sqrt(height)  # Returns approximately 12.57

# 5. Maximum Value
max_value = max(age, height)  # Returns 158.5

# 6. Minimum Value
min_value = min(age, height)  # Returns 30

# 7. Round a Number
rounded_height = round(height)  # Returns 159

# 8. Floor and Ceiling
floor_height = floor(height)  # Returns 158
ceiling_height = ceiling(height)  # Returns 159

# Print results
print(paste("Absolute Value:", abs_value))
print(paste("Total:", total))
print(paste("Average:", average))
print(paste("Square Root of Height:", square_root_height))
print(paste("Maximum Value:", max_value))
print(paste("Minimum Value:", min_value))
print(paste("Rounded Height:", rounded_height))
print(paste("Floor of Height:", floor_height))
print(paste("Ceiling of Height:", ceiling_height))
