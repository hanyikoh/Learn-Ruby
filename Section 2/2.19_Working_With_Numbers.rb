puts 1 + 2
# 3
# => nil

# IRB
# Division between Integers only get back Integer
puts 10 / 2
# => 5
puts 10 / 4
# => 2

# Division between Integer and Float will get back Float
puts 10.0 / 2
# => 5.0
puts 10 / 2.0
# => 5.0
puts 10 / 4.to_f
# => 2.5
puts (10 / 4).to_f
# => 2.0

x = 5
y = 10
puts y/x

puts "I as a line"
puts "-" * 20
puts "I as a diff line after a divider"
20.times{print "-"}

# Conversion 
x = "5".to_i # From string convert to integer
# => 5
puts x.to_f # From integer convert to integer
# => 5.0
y = "10".to_f # From integer convert to float
puts x * y
# => 50.0
puts "hello".to_i # From string convert to integer ( will only output 0 for non-number string value )
# => 0
puts "hello".to_f # From string convert to integer ( will only output 0.0 for non-number string value )
# => 0.0
x = "hello"
puts x.to_i
# => 0

puts "Simple Calculator"
25.times{print"-"}
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number" 
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{num_1.to_i * num_2.to_i}"
puts "The modulus between first number and the second number is #{num_1.to_i % num_2.to_i}"