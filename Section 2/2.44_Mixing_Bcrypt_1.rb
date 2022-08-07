require 'bundler/inline'

# install bcrypt gem
# gemfile true do
#   source 'http://rubygems.org'
#   gem 'bcrypt'
# end

# Fetching gem metadata from http://rubygems.org/.
# Resolving dependencies...
# Using bcrypt 3.1.18
# Using bundler 2.1.4

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
  #=> "$2a$12$Flh1ZY4uT.jssJFDKfGPf.jXejx3ekotEubP.0vhJB5NKisZwpvfi"

puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$Flh1ZY4uT.jssJFDKfGPf.jXejx3ekotEubP.0vhJB5NKisZwpvfi")
# puts my_password  #=> $2a$12$Flh1ZY4uT.jssJFDKfGPf.jXejx3ekotEubP.0vhJB5NKisZwpvfi
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false