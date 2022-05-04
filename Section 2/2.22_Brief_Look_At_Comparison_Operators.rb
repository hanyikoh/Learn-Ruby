p 10 == 9
# => false 
p 10 == 10
# => true 
p 10 == "10".to_i
# => true 
p 10 == "10".to_f # Integer 10 equal to 10.0, they are same in terms of numerical value
# => true 
p 10 != 9
# => true 
p "hello" != "bye" 
# => true 
p "hello" != "hello"
# => false 
p "hello" == "hello"
# => true 

puts

p 100 > 99
# => true
p 100 >= 100
# => true
p 100 >= 99
# => true
p 100 >= 101
# => false
p 100 <= 101
# => true
p "" == " "
# => false
p 10 == "10".to_f
# => true
p 10 == 10.0
# => true
p 10 === 10.0
# => true
p 10 == 10.eql?(10.0) # this is the strictes form of equality comparison in ruby, it will only return true if both objects are same
# => false