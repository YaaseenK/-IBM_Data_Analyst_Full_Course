# Create your first tuple

tuple1 = ("disco",10,1.2 )
# print(tuple1)
# Print the type of the tuple you created

# print(type(tuple1))

# Print the variable on each index

# print(tuple1[0])
# print(tuple1[1])
# print(tuple1[2])

# Print the type of value on each index

# print(type(tuple1[0]))
# print(type(tuple1[1]))
# print(type(tuple1[2]))

tuple2 = tuple1 + ("hard rock", 10)
# print(tuple2)

# print(len(tuple2))

#Samlple tuple 

Ratings = (0,9,6,5,10,8,9,6,2)

ratingsSorted = sorted(Ratings)
# print(ratingsSorted)

# NESTED TUPLE 

nestedT = (1, 2, ("pop", "rock"), (3, 4), ("disco", (1,2)))
print("Element 0 of Tuple: ", nestedT[0])
print("Element 1 of Tuple: ", nestedT[1])
print("Element 2 of Tuple: ", nestedT[2])
print("Element 3 of Tuple: ", nestedT[3])
print("Element 4 of Tuple: ", nestedT[4])

print("================================")

print("Element 2, 0 of Tuple ", nestedT[2][0])
print("Element 2, 1 of Tuple ", nestedT[2][1])
print("Element 3, 0 of Tuple ", nestedT[3][0])
print("Element 3, 1 of Tuple ", nestedT[3][1])
print("Element 4, 0 of Tuple ", nestedT[4][0])
print("Element 4, 1 of Tuple ", nestedT[4][1])

print(nestedT[2][1][0])

#print the second element in the second nested tuple
print(nestedT[2][1][1])