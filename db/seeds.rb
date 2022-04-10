# USERS
User.destroy_all
user1 = User.create({
   :name=>"Wayne",
   :email=>"wayne@wayne.com",
   :username=>"wayne",
   :password=>"wayne",
   })
user2 = User.create({
   :name=>"Daryl",
   :email=>"daryl@daryl.com",
   :username=>"daryl",
   :password=>"daryl",
   })
user3 = User.create({
   :name=>"Dan",
   :email=>"dan@dan.com",
   :username=>"dan",
   :password=>"dan",
   })

puts "Total number of users: #{User.all.count}"
puts "User names: #{User.all.pluck("name")}"
puts "User1: #{user1.name} username: #{user1.username} password: #{user1.password}"
puts "User2: #{user2.name} username: #{user2.username} password: #{user2.password}"
puts "User3: #{user3.name} username: #{user3.username} password: #{user3.password}"