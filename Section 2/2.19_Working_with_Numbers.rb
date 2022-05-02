puts 1 + 2
# 3
# => nil

# IRB
puts 10 / 2
# => 5
puts 10 / 4
# => 2
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

x = "5".to_i
# => 5
x.to_f
# => 5.0
y = "10".to_f
x * y
# => 50.0
"hello".to_i
# => 0
"hello".to_f
# => 0.0
x = "hello"
x.to_i
# => 0