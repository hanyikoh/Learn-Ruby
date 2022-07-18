users = [
    {username: "hanyikoh", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password3"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password:"password5"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password ## Check if the enter credentials match
            return user_record ## Return from a function will exit the function, so the for loop will stop
        else
            return "Credentials were not correct"
        end
    end
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n" # Break the loop if user enter n
    # if input == 4
    #     break
    # end
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4

# This program will take input from the user and compare password
# Username: #<= hanyikoh
# Password: #<= password1
# => {:username=>"hanyikoh", :password=>"password1"}