# Character Data Type Functions

# Assign a character value
name = "Sushrutha"

# 1. Number of Characters
name_length = nchar(name)  # Returns 9

# 2. Substring Extraction
first_name = substr(name, 1, 5)  # Returns "Sushr"

# 3. Concatenation of Strings
greeting = paste("Hello", name)  # Returns "Hello Sushrutha"

# 4. Convert to Upper Case
upper_case_name = toupper(name)  # Returns "SUSHRUTHA"

# 5. Convert to Lower Case
lower_case_name = tolower(name)  # Returns "sushrutha"

# 6. Find the Position of a Substring
position = regexpr("Sush", name)  # Returns the starting position of "Sush" (1)

# 7. Replace a Substring
new_name = sub("Sushrutha", "Sush", name)  # Returns "Sush"

Sentence = "My name is Sushrutha. I teach R programming"
Sentence

sub("Sushrutha","Sushrutha Raj",Sentence)

# 8. String Splitting
name_parts = strsplit(name, "")[[1]]  # Splits the name into individual characters
strsplit(Sentence, " ")[[1]]

# Print results
print(paste("Number of Characters:", name_length))
print(paste("First Name Substring:", first_name))
print(greeting)
print(paste("Upper Case Name:", upper_case_name))
print(paste("Lower Case Name:", lower_case_name))
print(paste("Position of 'Sush':", position))
print(paste("Name after Replacement:", new_name))
print("Name Parts:")
print(name_parts)
