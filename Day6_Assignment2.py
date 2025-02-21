# 2. Write a python program to check whether a number is palindrome or not?

num = int(input("Enter a number: "))  # Input number
num_str = str(num)  # Convert number to string for easy comparison

# Check if the number is a palindrome using a for loop
is_palindrome = True
for i in range(len(num_str) // 2):
    if num_str[i] != num_str[-(i + 1)]:
        is_palindrome = False
        break

# Output result
if is_palindrome:
    print(num, "is a palindrome.")
else:
    print(num, "is not a palindrome.")

''' Output:
Enter a number: 757
757 is a palindrome.
'''
