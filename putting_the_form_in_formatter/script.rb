print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

# gets is the Ruby method that gets input from the user. When getting input, Ruby automatically adds a
# blank line (or newline) after each bit of input; chomp removes that extra line. (Your program will
# work fine without chomp, but you'll get extra blank lines everywhere.)

# If you define a variable monkey that's equal to the string "Curious George", and then you have a string
# that says "I took #{monkey} to the zoo", Ruby will do something called string interpolation and replace
# the #{monkey} bit with the value of monkey—that is, it will print "I took Curious George to the zoo".

# We don't assign the result of capitalize to a variable. Instead you might notice the ! at the end of
# capitalize. This modifies the value contained within the variable answer itself. The next time you use
# the variable answer you will get the results of answer.capitalize.
