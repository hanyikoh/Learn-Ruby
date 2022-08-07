require "bcrypt"

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

#=> $2a$12$TMEA8FxdwO6ph0I6/bw8v.kd2idNUBS.89lABHFyCqSu8VKwSrFeu
#=> $2a$12$rl8e12r6ZuIdcLRQn6iCZuuOnaQS5Xjm.dpkhK53U2EE8wXuQTrbm
#=> $2a$12$OZMMCpYHP8zX8q4mQ/0p6OCN7HMIns20XykyLY2az3HQpzunPMft2

puts my_password == my_password_1 #=> false
puts my_password == "my password" #=> true