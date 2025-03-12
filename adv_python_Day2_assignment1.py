'''1. You have a list of employee records, and you need to create a new list that contains the names of employees who work in the 'Sales' department, all in uppercase. Example Data:
employees = [ {"name": "John Doe", "department": "Sales"}, {"name":
"Jane Smith", "department": "Marketing"}, {"name": "Emily Johnson",
"department": "Sales"}, {"name": "Michael Brown", "department": "HR"} ]'''

employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

# List comprehension to filter and convert names to uppercase
sales_employees = [employee["name"].upper() for employee in employees if employee["department"] == "Sales"]

print(sales_employees)

'''Output : ['JOHN DOE', 'EMILY JOHNSON']'''
