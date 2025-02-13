# 2.Python Program to Find the Largest Among Three Numbers.

# Take input from the user
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
num3 = float(input("Enter the third number: "))

# Compare the numbers to find the largest
if num1 >= num2 and num1 >= num3:
    print(f"The largest number is {num1}.")
elif num2 >= num1 and num2 >= num3:
    print(f"The largest number is {num2}.")
else:
    print(f"The largest number is {num3}.")



    """ Output :
Enter the first number: 34
Enter the second number: 54
Enter the third number: 12
The largest number is 54.0.
"""
