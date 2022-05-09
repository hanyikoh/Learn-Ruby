condition = true 
another_condition = true
if condition && another_condition # True and True = True
    puts "Hello"
else 
    puts "Bye"
end
# => "Hello"

condition = true 
another_condition = false
if condition && another_condition # True and False = False
    puts "Hello"
else 
    puts "Bye"
end
puts "La la la"
# => "Bye"
# => La la la

condition = false 
another_condition = false
if condition && another_condition # False and False = False
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
# => "This evaluated to false"


condition = false 
another_condition = false
if !condition && !another_condition # Not False & Not False = True & True = True
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
puts "La la la"
# => "This evaluated to true"
# => La la la


condition = true
another_condition = false
if condition || another_condition # True OR False will evaluated to true
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
# => "This evaluated to true"

condition = false
another_condition = false
if condition || another_condition # True OR False will evaluated to true
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
# => "This evaluated to false"

condition = false
another_condition = false
if !condition || !another_condition # Not False OR Not False = True OR True = True
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
# => "This evaluated to true"

condition = false
another_condition = false
if !condition || another_condition # Not False OR False = True OR False = True
    puts "This evaluated to true"
else  
    puts "This evaluated to false"
end 
# => "This evaluated to true"


name = "Mashrur"
if name == "Mashrur"
    puts "Welcome to the program, Mashrur"
elsif name == "Jack"
    puts "welcome to the program, Jack"
elsif name == "Evgeny"
    puts "welcome to the program, Evgeny"
else
    puts "Welcome to the program, user"
end
# => Welcome to the program, Mashrur

puts "Simple Calculator"
20.times{print "-"}
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "what do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"

user_entry = gets.chomp
if user_entry == "1"
    puts "You have chosen to multiply"
elsif user_entry == "2"
    puts "You have chosen to add"
elsif user_entry == "3"
    puts "You have chosen to subtract"
else 
    puts "Invalid entry"
end