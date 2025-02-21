#2. Write a Python program to get the largest and smallest number from a
#list without built in functions.

# Define the list
numbers = [10, 25, 3, 7, 18]

# Initialize variables to store the largest and smallest numbers
# Set them to the first element of the list initially
largest = smallest = numbers[0]

# Loop through the list to compare each number
for number in numbers:
    if number > largest:
        largest = number
    if number < smallest:
        smallest = number

# Print the results
print("The largest number in the list is:", largest)
print("The smallest number in the list is:", smallest)

'''Output:
The largest number in the list is: 25
The smallest number in the list is: 3
'''
