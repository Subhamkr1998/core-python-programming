# 3. Write a python program finding the factorial of a given number
# using a while loop.

# Input from the user
num = int(input("Enter a number: "))

# Initialize the result to 1
result = 1

# Use a while loop to calculate the factorial
while num > 0:
    result = result * num
    num = num - 1

# Output the result
print("The factorial is" ,result)

''' Output:
Enter a number: 6
The factorial is 720
'''
