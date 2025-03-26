# Create a list

L = ["The Bodyguard", 7.0, 1992]
# print(L)

# Print the elements on each index

# print('the same element using negative and positive indexing:\n Postive:',L[0],
# '\n Negative:' , L[-3]  )
# print('the same element using negative and positive indexing:\n Postive:',L[1],
# '\n Negative:' , L[-2]  )
# print('the same element using negative and positive indexing:\n Postive:',L[2],
# '\n Negative:' , L[-1]  )


'''
Lists can contain strings, floats, and integers. 
We can nest other lists, and we can also nest tuples and other data structures. 
The same indexing conventions apply for nesting:
'''
# Sample List

newList = ["The Bodyguard", 7.0, 1992, [1, 2], ("A", 1)]


# Sample List

L = ["The Bodyguard", 7.0,1992,"BG",1]
# print(L)

# List slicing

# print(L[3:5])

# Use extend to add elements to list

L = [ "The Bodyguard", 7.0]
L.extend(['pop', 10])
# print(L)

# Use append to add elements to list

L = [ "The Bodyguard", 7.0]
L.append(['pop', 10])
# print(L)

'''
As lists are mutable, we can change them. 
For example, we can change the first element as follows:
'''
A = ["disco", 10, 1.2]
print('Before change:', A)
A[0] = 'hard rock'
print('After change:', A)

Y =["poop", 70, 7.9]
Y[1] = '12'
print(Y)

# Delete the element based on the index

# print('Before change:', A)
del(A[0])
# print('After change:', A)

# Split the string, default is by space

listy = 'hard rock'.split()
# print(listy)

# Split the string by comma

splitListyByComma ='A,B,C,D'.split(',')
# print(splitListyByComma)

# Copy (copy by reference) the list A

A = ["hard rock", 10, 1.2]
# B = A
# print('A:', A)
# print('B:', B)

# Examine the copy by reference

# print('B[0]:', B[0])
# A[0] = "banana"
# print('B[0]:', B[0])

# Clone (clone by value) the list A

# B = A[:]
# print(A[0])

# print('B[0]:', B[0])
# A[0] = "banana"
# print('B[0]:', B[0])

ShoppingList = ["watch", "laptop", "shoes", "pen", "clothes"]
del(ShoppingList[-1])
# print(ShoppingList)


ShoppingList.append("football"
            )
# print(ShoppingList )

l1 = [1, 2, 3, 4, 5, 6, 7, 8]

print(l1[-1:])