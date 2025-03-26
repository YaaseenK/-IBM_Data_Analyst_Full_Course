# name = input ('Whats your name? ')

# name = name.strip() #remove white space from str
# name = name.capitalize() #caplitalize the name 
# name = name.title() # caplitalizes every word of input
# print(f"Hello {name}!")

# name2 = input('Whats the second name? ')
# you can chain multiple methods 
# name2 = name2.strip().title()
# print(name2)

'''
Data Types	
- Integer - Float - Boolean - String	
'''
x=7 
# Integer Value 
y=12.4 
# Float Value 
is_valid = True 
# Boolean Value 
is_valid = False 
# Boolean Value 
F_Name = "John" 
# String Value

randomString = "Hello, world"

length = len(randomString)

sub_string = randomString[0:12]
print(sub_string)
split_Text = randomString.split(",")
print(split_Text)
trimmed = randomString.strip()
print(trimmed)