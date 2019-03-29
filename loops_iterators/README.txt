The 'While' Loop

Sometimes you want to repeat an action in Ruby while a certain condition is true, but you don't
know how many times you'll have to repeat that action. A good example would be prompting a user
for a certain type of input: if they insist on giving you the wrong thing, you may have to re-ask
them several times before you get the kind of input you're looking for.

To accomplish this, we use something called a while loop. It checks to see if a certain condition
is true, and while it is, the loop keeps running. As soon as the condition stops being true, the
loop stops!

If we write a wrong condition or our while block code don't manage that condition well
the loop would never have ended. This is called an infinite loop and it will cause your programs
to crash.

#################################################################################################

The 'Until' Loop

The complement to the while loop is the until loop. It's sort of like a backward while:
i = 0
until i == 6
  i = i + 1
end
puts i

In the example above, we first create a variable i and set it to 0 (zero).
Then we execute a block of code until i is equal to 6. That block of code increments i.
When i is equal to 6, the block ends.
Finally, we print 6, the value of i, to the console.

###################################################################################################

You can update a variable with additional assignment operators, however, which include +=, -=, *=,
and /=.

Some languages have the increment operators ++ and -- (which also add or subtract 1 from a value),
but Ruby does not. You'll have to make do with += and -=!

###################################################################################################

The 'For' Loop

Sometimes you do know how many times you'll be looping, however, and when that's the case, you'll
want to use a for loop.

for num in 1...10 => "For the variable num in the range 1 to 10, do the following."

For include 10 we need to put two dots.

###################################################################################################

Iterator

An iterator is just a Ruby method that repeatedly invokes a block of code. The code block is just
the bit that contains the instructions to be repeated, and those instructions can be just about
anything you like!

The simplest iterator is the loop method. You can create a basic (but infinite!) loop by simply
typing:
      loop { print "Hello, world!" }

In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block)
and end (to close it). Knowing this, we can write a smarter loop than the one above:

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end

The break keyword is our Get Out of Jail Free card: it breaks a loop as soon as its condition is met.

###################################################################################################

Next!

The next keyword can be used to skip over certain steps in the loop. For instance, if we don't want
to print out the even numbers, we can write:

for i in 1..5
  next if i % 2 == 0
  print i
end

In the above example, we loop through the range of 1 through 5, assigning each number to i in turn.
If the remainder of i / 2 is zero, we go to the next iteration of the loop.
Then we print the value of i. This line only prints out 1, 3, and 5 because of the previous line.

###################################################################################################

Saving Multiple Values

In Ruby, we can pack multiple values into a single variable using an array. An array is just a list
of items between square brackets, like so: [1, 2, 3, 4]. The items don't have to be in order—you can
just as easily have [10, 31, 19, 400].

###################################################################################################

The .each Iterator

The loop iterator is the simplest, but also one of the least powerful. A more useful iterator is the
.each method, which can apply an expression to each element of an object, one at a time. The syntax
looks like this:

object.each { |item|
  # Do something
}

You can also use the do keyword instead of {}:

object.each do |item|
  # Do something
end

The variable name between | | can be anything you like: it's just a placeholder for each element of
the object you're using .each on.

###################################################################################################

The .times Iterator

The .times method is like a super compact for loop: it can perform a task on each item in an object
a specified number of times.

For example, if we wanted to print out "Chunky bacon!" ten times, we might type

10.times { print "Chunky bacon!" }
