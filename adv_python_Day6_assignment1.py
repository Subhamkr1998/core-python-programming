'''Lab1:  Write a Python proLab1:  Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 
1. Class Attributes: ○ total_books: A class attribute representing the total number of books available in the library. ○ all_books: A class attribute that stores a list of all books available. 
2. Instance Attributes: ○ name:Nameof the library member. ○ borrowed_books: A list to keep track of books borrowed by the member. 
3. Methods: ○ borrow_book(self, book): A method to borrow a book from the library. The method should: ■ Checkif the book is available
■ Addthebook to the member's borrowed list. 
■ Removethe book from the library's all_books list. 
■ Decrease total_books by 1
■ If the book is not available, return a message saying "Book not available." ○ return_book(self, book): A method to return a book. The method should: 
■ Addthebook back to the library's all_books list.
■ Removethe book from the member's borrowed_books list. 
■ Increase total_books by 1. 
4. Class Method: ○ view_library_books(cls): A class method that prints the total number of books and lists all available books'''

class Library:
    # Class Attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance Attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        """
        Method to borrow a book from the library.
        """
        if book in Library.all_books:
            self.borrowed_books.append(book)
            Library.all_books.remove(book)
            Library.total_books -= 1
            print(f"{self.name} borrowed '{book}'.")
        else:
            print(f"Book '{book}' not available.")

    def return_book(self, book):
        """
        Method to return a book to the library.
        """
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)
            Library.all_books.append(book)
            Library.total_books += 1
            print(f"{self.name} returned '{book}'.")
        else:
            print(f"{self.name} did not borrow '{book}'.")

    @classmethod
    def view_library_books(cls):
        """
        Class method to view the total number of books and the list of available books.
        """
        print(f"Total books in the library: {cls.total_books}")
        print("Available books:", cls.all_books)


# Example Usage:

# Creating books and adding them to the library
Library.all_books = ["The Great Gatsby", "1984", "To Kill a Mockingbird", "Pride and Prejudice", "Moby Dick"]
Library.total_books = len(Library.all_books)

# Create library members
member1 = Library("Alice")
member2 = Library("Bob")

# Viewing available books before borrowing
Library.view_library_books()

# Borrowing books
member1.borrow_book("1984")
member2.borrow_book("Moby Dick")

# Viewing available books after borrowing
Library.view_library_books()

# Returning books
member1.return_book("1984")
member2.return_book("Moby Dick")

# Viewing available books after returning
Library.view_library_books()

'''OutPut :
Total books in the library: 5
Available books: ['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Pride and Prejudice', 'Moby Dick']
Alice borrowed '1984'.
Bob borrowed 'Moby Dick'.
Total books in the library: 3
Available books: ['The Great Gatsby', 'To Kill a Mockingbird', 'Pride and Prejudice']
Alice returned '1984'.
Bob returned 'Moby Dick'.
Total books in the library: 5
Available books: ['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Pride and Prejudice', 'Moby Dick']
'''
