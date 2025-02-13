#1.Python program to check leap year  or not.

# Take input from the user
year = int(input("Enter a year: "))

# Check if the year is a leap year
if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print(year, "is a leap year.")
        else:
            print(year, "is not a leap year.")
    else:
        print(year, "is a leap year.")
else:
    print(year, "is not a leap year.")
    

""" output :
Enter a year: 2028
2028 is a leap year.
"""

