# 1. Write a python program to reverse a number using a while loop. 

# Input: Take a number from the user
num = int(input("Enter a number: "))

# Initialize variables
reversed_num = 0

# While loop to reverse the number
while num > 0:
    digit = num % 10           # Get the last digit
    reversed_num = reversed_num * 10 + digit  # Add the digit to reversed_num
    num = num // 10            # Remove the last digit from the number

# Output: Display the reversed number
print("Reversed number:", reversed_num)


''' Output :
Enter a number: 1234567
Reversed number: 7654321
'''
