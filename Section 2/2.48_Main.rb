require_relative '2.48_Mixins_3_Modules'

# Absolute path import module, the below is the alternative of the require_relative '2.48_Mixins_3_Modules'
# $LOAD_PATH << "."
# require '2.48_Mixins_3_Modules'
 
users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]
 
hashed_users = Crud.create_secure_users(users)
puts hashed_users