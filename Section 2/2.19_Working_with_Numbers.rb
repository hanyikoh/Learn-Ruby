puts 1 + 2
# 3
# => nil

# IRB
# Integer divided by Integer will get back integer
puts 10 / 2 
# => 5
puts 10 / 4 # The remainder is not getting printed out cause the decimal places dropped
# => 2

# Integer divided by Float will get back Float
puts 10.0 / 2 
# => 5.0
puts 10 / 2.0
# => 5.0

# Integer Conversion to Float
puts 10 / 4.to_f # = 10 / 4.0
# => 2.5
puts (10 / 4).to_f # = ( 10 / 4 ).to_f, the formula inside parenthesis will be execiuted first
# => 2.0

# Mathematical Operation with Variables
x = 5
y = 10
puts y/x
# => 2

# string multiply with numbers
puts "I as a line"
puts "-" * 20
puts "I as a diff line after a divider"
20.times{print "-"}

# More conversion practice
x = "5".to_i # string convert to integer and store in a variable
# => 5
puts x.to_f # integer convert to float
# => 5.0
y = "10".to_f # float convert to float and store in a variable
puts x * y
# => 50.0
puts "hello".to_i # strings convert to integer ( will get back zero for non-numbers string value )
# => 0
puts "hello".to_f # strings convert to float ( will get back 0.0 for non-numbers string value )
# => 0.0
x = "hello"
puts x.to_i
# => 0

# Calculator Exercise
puts "Simple Calculator"
25.times{print"-"}
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number" 
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{num_1.to_i * num_2.to_i}"
puts "The modulus between first number and the second number is #{num_1.to_i % num_2.to_i}" # Modulus

