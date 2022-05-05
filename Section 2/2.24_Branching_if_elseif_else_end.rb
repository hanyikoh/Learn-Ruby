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
