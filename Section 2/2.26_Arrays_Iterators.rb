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
# => [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
x = "a".."z"
p x.to_a
# => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
p x.to_a.shuffle
# => ["k", "w", "a", "y", "z", "e", "h", "n", "o", "x", "c", "r", "u", "t", "v", "p", "d", "f", "s", "g", "b", "j", "i", "q", "l", "m"]
y = x.to_a.shuffle
p y.length
# => 26


# Add item to an array with unshift, append, << and get element with uniq, last and first function
p a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9]
a << 10
p a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.last 
# => 10
p a.first
# => 1
p a.unshift("hanyi") # Add as first element
# => ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.append("hanyi") # Add as last element
# => ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "hanyi"]
p a.uniq # Return the unique element only
# => ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.uniq! # a = a.uniq
# => ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a
# => ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


puts

# Check if array is empty and include certain element
p a.empty?
# false
b=[]
p b.empty?
# true
p a.include?("hanyi")
# true
p a.include?("hanyikoh")
# false


puts

# Push and pop the array ( the value that is getting pushed or poped will be returned. )
p a.push("new item")
# ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "new item"]
b = a.pop # return the last item and remove it from original array
p a
# ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p b
# "new item"

puts

# Join and Split method on array ( Join is used for combine the elements, Split is used for splitting something into elements, put into array )
p a
# ["hanyi", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.join
# "hanyi12345678910"
p a.join("-")
# "hanyi-1-2-3-4-5-6-7-8-9-10"
p a.join(", ")
# "hanyi, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10"
b = a.join("-")
p b.split
# ["hanyi-1-2-3-4-5-6-7-8-9-10"]
p b.split("-")
# ["hanyi", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
p %w(my name is hanyi and this is great Ruby is amazing)
# => ["my", "name", "is", "hanyi", "and", "this", "is", "great", "Ruby", "is", "amazing"]
# z = _ # In irb mode, this _ will get the last output
# z


puts

# iterator to iterate through array.
20.times{print"-"} 
puts 
z=%w"my name is hanyi and this is great Ruby is amazing"
for i in z
    print i
end
puts
for i in z
    print i + " " # Print out each element followed by a space
end
puts
z.each do | food | # Using each function to iterate the array
    print food + " "
end
puts
z.each{|food| print food + " "} # Another way of creating the each block
puts 
z.each{|food| print food.capitalize + " "} # Applied the capitalize function to capitalize every first letter of string element
puts
z = (1..100).to_a.shuffle
p z.select{|number| number.odd?} # Iterate through the entire array and only select the element the match with the condition

# a.methods to check all invokable methods for array
