sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
p sample_hash['b']
# => 2

another_hash = {a:1, b:2, c:3}
p another_hash[:a]
# => 1

## Useful Methods
sample_hash.keys
# => ["a","b","c"]

sample_hash.values
# => [1,2,3]

my_details = {'name' => "hanyi", 'favcolor' =>"blue"}
my_details.each do |key, value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end
# => The class for key is String and the value is String
# => The class for key is String and the value is String

myhash = {a:1, b:2, c:3, d:4}
p myhash
# => {:a=>1, :b=>2, :c=>3, :d=>4}
myhash[:e] = "HAN YI" # Assign Value
p myhash
# => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>"HAN YI"}
myhash[:c] = "Ruby" # Change Value
p myhash
# => {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"HAN YI"}

myhash.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"} # Iterate through the hash
# => The key is a and the value is 1
# => The key is b and the value is 2
# => The key is c and the value is Ruby
# => The key is d and the value is 4
# => The key is e and the value is HAN YI

p myhash.select{ |k,v| v.is_a?(String)} # Output the key value pair if the value is String class object
# => {:c=>"Ruby", :e=>"HAN YI"}
p myhash.each{ | k,v | myhash.delete(k) if v.is_a?(String)} # delete and return the the key value pair if the value is String class object
# => {:a=>1, :b=>2, :d=>4}
p myhash
# => {:a=>1, :b=>2, :d=>4}
