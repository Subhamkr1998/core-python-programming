# 1. Write a Python program to handle a ZeroDivisionError exception when
# dividing a number by zero.

try:
    # Taking input from the user
    num1 = float(input("Enter the numerator: "))
    num2 = float(input("Enter the denominator: "))

    # Attempting to divide the numbers
    result = num1 / num2
    print(f"The result is: {result}")

except ZeroDivisionError:
    print("Error: Cannot divide by zero!")

    ''' Output:
Enter the numerator: 20
Enter the denominator: 0
Error: Cannot divide by zero!
'''
