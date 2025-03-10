'''2. Write a function in Python to count and display the total number
of words in a text file “ABC.txt”'''

def count_words_in_file():
    try:
        with open("ABC.txt", "r") as file:
            content = file.read()  # Read the entire file content
            words = content.split()  # Split content into words
            print(f"Total number of words: {len(words)}")
    except FileNotFoundError:
        print("The file 'ABC.txt' does not exist.")

# Call the function
count_words_in_file()

'''Output: Total number of words: 16'''
