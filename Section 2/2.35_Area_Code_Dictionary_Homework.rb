dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  puts somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  return somehash[key];
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase # Downcasing the input so that it accepts both Y and y
  
  break if answer != "y"
  
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end

# => Do you want to lookup an area code based on a city name?(Y/N)
# <= y
# => Which city do you want the area code for?
# => newyork
# => newbrunswick
# => edison
# => plainsboro
# => sanfrancisco
# => miami
# => paloalto
# => evanston
# => orlando
# => lancaster

# => Enter your selection
# <= orlando
# => The area code for orlando is 407