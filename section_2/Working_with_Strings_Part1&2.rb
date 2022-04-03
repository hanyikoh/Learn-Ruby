# WORKING WITH STRINGS Part 1
# String concatenation
first_name = "hanyi"
last_name = "koh"
puts first_name + " " + last_name
full_name = first_name + last_name

# String interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"

# Using method
puts full_name.class    
# => String
p 10.methods # find all the invokable methods for the object by default
# => [:bit_length, :digits, :|, :gcd, :lcm, ...]
p 10.class
# => String
## When using two methods on one object in the same line, is called method chain for example: 10.to_s.class
p 10.to_s.class
# => String

p full_name.length       
# => 8
p full_name.reverse      
# => "hokiynah"
p full_name.capitalize # Only the first char will be capitalized, the other chars will be uncapitalized.   
# => "Hanyikoh"
p full_name.empty?       
# => false
p "".empty?              
# => true
p "".nil?                
# => false (even though it is empty, it is not nil)
p nil.nil?               
# => true

sentence = "Welcome to the jungle the jungle"
p sentence.sub("the jungle", "utopia") # Change the first phrase passed in as first parameter to second parameter
# => "Welcome to utopia the jungle"
p sentence.gsub("the jungle", "utopia") # Change the every phrase passed in as first parameter to second parameter
# => "Welcome to utopia utopia"

first_name = "Mashrur"
new_first_name = "hanyi"
first_name  = "hanyiii"
p new_first_name
# => "hanyi"
p first_name
# => "hanyiii"

# Special Character
p 'the new first name is #{new_first_name}'
# => "the new first name is \#{new_first_name}"
p "the new first name is \#{new_first_name}" # it will not print out the new_first_name value as we escaped it
# => "the new first name is \#{new_first_name}"
p 'Mashrur asked \'Hey John, how are you doing?\''
# => "Mashrur asked 'Hey John, how are you doing?'"

# WORKING WITH STRINGS Part 2: GETTiNG INPUT FROM USER
puts "What is your first name?"
first_name = gets.chomp
# <= hanyi
puts "What is your last name?"
last_name = gets.chomp 
# <= koh
puts "HELLO #{first_name} #{last_name} Nice to meet you!"
# => HELLO hanyi koh Nice to meet you!

# INPUTS Data Type
puts "Enter a number to multiply by 2"
input = gets.chomp
# <= 2
puts input * 2 # This is equal to string concatenation ( puts "2" + "2")
# <= 22
puts input.to_i * 2 # Convert input to integer and multiply it with 2
# <= 4