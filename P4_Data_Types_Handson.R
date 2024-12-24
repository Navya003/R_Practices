
#Data Types assignment

# Student Details
age = 30                      # Numeric (replace with your age)
height = 158.5                # Numeric (replace with your height in cm)
name = "Sushrutha"            # Character (replace with your name)
gender = factor("Female")     # Factor (replace with your gender)
is_student = FALSE            # Logical (TRUE if student, FALSE if not)
date_of_birth = as.Date("1993-11-05")  # Date/Time (replace with your date of birth)


typeof(age)
typeof(height)
typeof(name)
typeof(gender)
typeof(is_student)
typeof(date_of_birth)

class(age)
class(height)
class(name)
class(gender)
class(is_student)
class(date_of_birth)

paste("Hello", "Sushrutha")

paste("Age:", age)
paste0("Age:", age)

paste("My Age is:", age)
class(name)


# Print variables and their types
print(paste("My Age is:", age, " - Type of this Variable is:", class(age)))
print(paste("My height is:", height, " - Type of this Variable is:", class(height)))
print(paste("My Name is:", name, " - Type of this Variable is:", class(name)))
print(paste("My gender is:", gender, " - Type of this Variable is:", class(gender)))
print(paste("Am i a student:", is_student, " - Type of this Variable is:", class(is_student)))
print(paste("My DOB is:", date_of_birth, " - Type of this Variable is:", class(date_of_birth)))

print(paste("Age:", age, " - Type:", class(age)))
print(paste("Height:", height, " - Type:", class(height)))
print(paste("Gender:", gender, " - Type:", class(gender)))
print(paste("Is Student:", is_student, " - Type:", class(is_student)))
print(paste("Date of Birth:", date_of_birth, " - Type:", class(date_of_birth)))

# Calculate height in meters
height_meters = height / 100
print(paste("Height in meters:", height_meters))
print(paste("Height in meters:", height/100))

# Check if age is greater than 18
is_adult = age > 18
print(paste("Is adult:", is_adult))

paste("I am legally elligible for marriage:", age>18)

# Convert date of birth to different format
date_of_birth
formatted_dob = format(date_of_birth, "%B %d, %Y")
print(paste("Formatted Date of Birth:", formatted_dob))
