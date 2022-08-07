# require 'bundler/inline'
 
# gemfile true do
#  source 'http://rubygems.org'
#  gem 'bcrypt'
# end
 
require 'bcrypt'
 
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
def create_hash_digest(password)
  BCrypt::Password.create(password)
end
 
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end
 
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)
# {:username=>"mashrur", :password=>"$2a$12$EUUYXObUPvGfHzqczsDFeezzLCm77qePioYRD9RLUoEl.151C5Kt6"}
# {:username=>"jack", :password=>"$2a$12$VDZZvbYKrK5cVKdDG5YIJOU5dlPiP0WjZgH7ZltO4vUR2efYsQbzW"}
# {:username=>"arya", :password=>"$2a$12$9me4yBmkIBvPGkRmQU8DOunLYeHXVyBcQDCKUGmtOBcXt3c6DZEdq"}
# {:username=>"jonshow", :password=>"$2a$12$DLCm1JfPetSuWxyhVty9sOx8rPA6py1pQZOQUzktxMtgsKkog9XHu"}
# {:username=>"heisenberg", :password=>"$2a$12$OsbunIlMCwxpla/hnKdjXOYJ3Y3DvPUSbgy/VIxF6MX9bK9MFKEu."}
