'''Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 
1. Class Attribute: ○ available_movies: A list of all movies available in the library.
2. Instance Attributes: ○ member_name: The name of the library member. ○ borrowed_movies: A list of movies borrowed by the member. 
3. Methods: ○ borrow_movie(self, movie): Borrows a movie from the library if available.
return_movie(self, movie): Returns a movie to the library.
view_borrowed_movies(self): Prints a list of movies borrowed by the member'''

class MovieLibrary:
    # Class Attribute: List of all available movies in the library
    available_movies = []

    def __init__(self, member_name):
        # Instance Attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        """
        Method to borrow a movie from the library if available.
        """
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)
            MovieLibrary.available_movies.remove(movie)
            print(f"{self.member_name} borrowed '{movie}'.")
        else:
            print(f"Movie '{movie}' is not available.")

    def return_movie(self, movie):
        """
        Method to return a borrowed movie to the library.
        """
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)
            MovieLibrary.available_movies.append(movie)
            print(f"{self.member_name} returned '{movie}'.")
        else:
            print(f"{self.member_name} did not borrow '{movie}'.")

    def view_borrowed_movies(self):
        """
        Method to view the list of movies borrowed by the member.
        """
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed the following movies:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")


# Example Usage:

# Creating a list of available movies in the library
MovieLibrary.available_movies = ["Inception", "The Matrix", "Titanic", "The Dark Knight", "Forrest Gump"]

# Create members
member1 = MovieLibrary("Alice")
member2 = MovieLibrary("Bob")

# Borrowing movies
member1.borrow_movie("Inception")
member2.borrow_movie("Titanic")

# View borrowed movies for each member
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# Returning movies
member1.return_movie("Inception")
member2.return_movie("Titanic")

# View borrowed movies again after returning
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# View available movies in the library
print("Available movies in the library:")
print(MovieLibrary.available_movies)

'''Output:
Alice borrowed 'Inception'.
Bob borrowed 'Titanic'.
Alice has borrowed the following movies:
- Inception
Bob has borrowed the following movies:
- Titanic
Alice returned 'Inception'.
Bob returned 'Titanic'.
Alice has not borrowed any movies.
Bob has not borrowed any movies.
Available movies in the library:
['The Matrix', 'The Dark Knight', 'Forrest Gump', 'Inception', 'Titanic']
'''
