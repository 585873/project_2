# users = ["Alice", "Bob", "Carol"]
# index = 0
# while index < users.length
#   puts users[index]
#   index += 1
# end

# users = ["Alice", "Bob", "Carol"]
# index = 0
# until index == users.length
#   puts users[index]
#   index += 1
# end

# users = ["Alice", "Bob", "Carol"]
# index = 0
# loop do
#   puts users[index]
#   index += 1
#   break if index == users.length
# end

# users = ["Alice", "Bob", "Carol"]
# users.length.times do |index|
#   puts users[index]
# end

10.times do |i|
  if i % 2 == 0
    next
  end
  puts i
end
