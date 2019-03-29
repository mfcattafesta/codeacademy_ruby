print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

# Ruby's if statement takes an expression, which is just a fancy word for something that has a value that
# evaluates to either true or false. If that expression is true, Ruby executes the block of code that follows
# the if. If it's not true (that is, false), Ruby doesn't execute that block of code: it skips it and goes on
# to the next thing.

# Ruby doesn't care about whitespace (spaces and blank lines), so the indentation of the print statement isn't
# necessary. However, it's a convention that Rubyists (Ruby enthusiasts) follow, so it's good to get in the
# habit now. The block of code following an if should be indented two spaces.

# The partner to the if statement is the else statement. An if/else statement says to Ruby: "If this expression
# is true, run this code block; otherwise, run the code after the else statement."

# The elsif statement can add any number of alternatives to an if/else statement.

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# Sometimes you want to use control flow to check if something is false, rather than if it's true. You could
# reverse your if/else, but Ruby will do you one better: it will let you use an unless statement.
# Let's say you don't want to eat unless you're hungry. That is, while you're not hungry, you write programs,
# but if you are hungry, you eat.

is_true = 2 != 3

is_false = 2 == 3

# In Ruby, we assign values to variables using =, the assignment operator. But if we've already used = for
# assignment, how do we check to see if two things are equal? Well, we use ==, which is a comparator (also
# called a relational operator). == means "is equal to."
# You can also check to see if two values are not equal using the != comparator.

test_1 = 17 > 16

test_2 = 21 < 30

test_3 = 9 >= 9

test_4 = -11 <= 4

# We can also check to see if one value is less than, less than or equal to, greater than, or greater than or
# equal to another. Those operators look like this:
#
# Less than: <
# Less than or equal to: <=
# Greater than: >
# Greater than or equal to: >=

boolean_1 = 77 < 78 && 77 < 77 # false

boolean_2 = true && 100 >= 100 # true

boolean_3 = 2**3 == 8 && 3**2 == 9 # true

# Comparators aren't the only operators available to you in Ruby. You can also use logical or boolean operators.
# Ruby has three: and (&&), or (||), and not (!). Boolean operators result in boolean values: true or false.
#
# The boolean operator and, &&, only results in true when both expression on either side of && are true.

boolean_1 = 2**3 != 3**2 || true # true

boolean_2 = false || -10 > -9 # false

boolean_3 = false || false # false

# Ruby also has the or operator (||). Ruby's || is called an inclusive or because it evaluates to true when
# one or the other or both expressions are true.
# true || true # => true
# true || false # => true
# false || true # => true
# false || false # => false

boolean_1 = !true # false

boolean_2 = !true && !true # false

boolean_3 = !(700 / 10 == 70) # false

# Finally, Ruby has the boolean operator not (!). ! makes true values false, and vice-versa.

boolean_1 = (3 < 4 || false) && (false || true) # true

boolean_2 = !true && (!true || 100 != 5**2) # false

boolean_3 = true || !(true || false) # true

# You can combine boolean operators in your expressions. These expression may take some getting used to, but
# you can always use parentheses to control the order of evaluation. Expressions in parentheses are always
# evaluated before anything outside parentheses.

# EXAMPLES

a = 10
b = 11
if a < b
  print "a is less than b!"
elsif b < a
  print "b is less than a!"
else
  print "b is equal to a!"
end

problem = false
print "Good to go!" unless problem
