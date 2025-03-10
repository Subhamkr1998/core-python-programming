# 2. Write a Python program that prompts the user to input an integer
# and raises a ValueError exception if the input is not a valid integer

try:
    # Prompting the user for input
    user_input = input("Enter an integer: ")
    
    # Attempting to convert the input to an integer
    number = int(user_input)
    print(f"You entered the integer: {number}")

except ValueError:
    print("Error: That is not a valid integer!")

'''Output:
Enter an integer: 26.5
Error: That is not a valid integer!'''
