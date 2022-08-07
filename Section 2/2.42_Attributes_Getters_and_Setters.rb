class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :password // Can only get the value but not allow for setting the value

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   "First name: #{@first_name}"
  # end

  # Add this to let the puts mashrur have a default output
  def to_s
    "First name: #{@first_name}, Last name #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end
  
hanyi = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com", "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com", "password2")

puts hanyi
puts john
hanyi.first_name = "hanyi"
hanyi.last_name = "koh"
hanyi.username = john.username
puts hanyi