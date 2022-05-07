# [1,2,3,4,5,6,7,8,9] <- this is array
# Array is an ordered list of items / elements
# Each element within the array could be programs, objects...
# Maintains index, the index start from 0,1,....

a = [1,2,3,4,5,6,7,8,9]
puts a # this output every element in the array, after printing out the value, it will jump to next line
# 1
# 2
# ...

print a # this output the array as it is.
# => [1, 2, 3, 4, 5, 6, 7, 8, 9]
# If using irb, can add a puts after print function to make the next function able to be executed in new line.
# Can also do p a

20.times{print"-"} 
puts
p a.last # Output last element
# => 9

puts

# Basic functions introduction and Shuffle function to shuffle the array
x = 1..100 # Define a range class object from 1 to 100
puts x.class
# => Range
p x.to_a
# => [1,2,3......100]
p x.to_a.shuffle
# => [55, 31, 98, 78, 53, 89, 12,...]
p x.to_a.shuffle! # The exclamation mark is referred to bang here, it will make permanent changes to the variable
# => [69, 17, 73, 63, 64, 20, 72,...]
puts x # The original variable value / array is not mutated because the previous bang is used on top of a method change so the variable x was not affected.
# => 1..100
z = x.to_a.shuffle!# Keep the elements in shuffled order
x = (1..10).to_a
p x.reverse! # Add bank to add permanent change
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
x = "a".."z"
p x.to_a
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
p x.to_a.shuffle
# ["k", "w", "a", "y", "z", "e", "h", "n", "o", "x", "c", "r", "u", "t", "v", "p", "d", "f", "s", "g", "b", "j", "i", "q", "l", "m"]
y = x.to_a.shuffle
p y.length
# 26
