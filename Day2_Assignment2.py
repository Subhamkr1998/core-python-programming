# Taking input from the user
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))

# Using ternary operator to find the largest number
largest = num1 if num1 > num2 else num2

# Displaying the result
print("The largest number is: ", largest)

''' Output :
Enter the first number: 10
Enter the second number: 60
The largest number is: 60.0
'''
