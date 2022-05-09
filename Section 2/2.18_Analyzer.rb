puts "Enter your first name"
first_name = gets.chomp
# <= hanyi
puts "Enter your last name"
last_name = gets.chomp
# <= koh
full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"
# => Your full name is hanyi koh
puts "Your full name reversed is #{full_name.reverse}"
# => Your full name reversed is hok iynah
puts "Your name has #{full_name.length - 1} characters in it"
# => Your name has 8 characters in it