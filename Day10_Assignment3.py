# 3.Write a Python program to find duplicate values from a list and
# display those.

# Define the list
numbers = [1, 2, 3, 4, 2, 5, 6, 7, 1, 8, 9, 6]

# Initialize an empty list to store duplicates value.
duplicates = []

# Loop through the list and find duplicates
for number in numbers:
    if numbers.count(number) > 1 and number not in duplicates:
        duplicates.append(number)

# Print the duplicate values
print("Duplicate values in the list are:", duplicates)

'''Output:
Duplicate values in the list are: [1, 2, 6]
'''
