What You'll Be Building

Now that we can direct our program using if / else statements, we can produce different results based on
different user input.

In this project, we'll combine control flow with a few new Ruby string methods to Daffy Duckify a user's
string, replacing each "s" with "th".

First, we should print a statement to prompt the user for input, then set that input to a variable using
gets.chomp.

We want to make sure we capture both "S" and "s" in the user's input. We could write separate if / else
statements to handle this, but we can also use .downcase! to convert the user's input to all lower case.
That way, we only have to search for "s".
Make sure to include the ! so that the user's string is modified in-place; otherwise, Ruby will create
a copy of user_input and modify that instead.

For the if half of our branch, we want to check whether the user's input contains an "s":
  if string_to_check.include? "substring"
We can do that using Ruby's .include? method, which evaluates to true if it finds what it's looking for
and false otherwise.

(As a general rule, Ruby methods that end with ? evaluate to the boolean values true or false.)

When we find "s", we want Ruby to replace every instance of "s" it finds with "th". We can do this with the
.gsub! method, which stands for global substitution.
The syntax looks like this: string_to_change.gsub!(/s/, "th")
When we get to later lessons, we'll explain why the /s/ has to be between slashes instead of between quotes.
Note: you cannot put a space between gsub! and the bit in parentheses.
Remember, you want the ! at the end of the method name so that Ruby will change the string in-place.

To display the Daffy Duckified string to the user you can use the string interpolation we learned earlier.
  my_string = "muchachos"
  print "Adios, #{my_string}!"
  # ==> "Adios, muchachos!"


Great work!
How might you improve this project? You could:

  - Add an additional if statement to re-prompt the user for input if they don't enter anything
  - Think about how you might account for words in which the letter "c" sounds like an "s"
  - Think about how you might preserve the user's original capitalization
