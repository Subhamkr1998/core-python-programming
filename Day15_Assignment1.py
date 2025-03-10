''' 1.Write a function in python to read the content from a text file
"ABC.txt" line by line and display the same on screen. '''

def read_file_and_display():
    try:
        with open("ABC.txt", "r") as file:
            for line in file:
                print(line, end="")  # 'end=""' prevents adding extra newlines
    except FileNotFoundError:
        print("The file 'ABC.txt' does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function
read_file_and_display()

'''Ouutput: The file 'ABC.txt' does not exist.'''
