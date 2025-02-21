'''2. Write a Python program to remove duplicate characters of a given string. 
Input = “String and String Function” 
Output: String and Function'''

# Input string
input_string = "String and String Function"

# Initialize an empty string to store the result
output_string = ""

# Loop through each character in the input string
for char in input_string:
    # Add the character to the output string if it's not already there
    if char not in output_string:
        output_string += char

# Output the result
print("Output:", output_string)

'''Output:
Output: String adFuco
'''
