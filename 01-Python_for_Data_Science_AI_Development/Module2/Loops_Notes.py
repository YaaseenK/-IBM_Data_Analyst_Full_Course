#Introduction to Loops in Python

# List of colors 
colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

# For Loop to Print list
# for color in colors:
    # print(color)

#Using the range function to print numbers in a given range
#The Range function will print the range -1 so a range given from 1-11 will actually be 1-10

# for number in range(1,11):
    # print(number)

# The Enumerated For Loop
# This will keep track both the item and its position
# fruits = ["apple", "banana", "orange"]
# for index, fruit in enumerate(fruits):
#     print(f"At position {index}, I found a {fruit}")

# names = ["Yaameen", "Neven", "Ben", "Yaaseen"]
# for i, name in enumerate(names):
#     print(f"At position {i}, {name} is found")


# While Loops will continute until a condition is met or is not met
# count: int = 1  
# while count <= 10:
#     print(count)
#     count += 1

fruit: str = ""


while fruit != "q":
    fruit = input("what is your favourite fruit? ('q' to quit )) " )
    print(f"you like {fruit}")

