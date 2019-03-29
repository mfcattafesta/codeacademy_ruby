METHODS, BLOCKS, & SORTING

Why Methods?

A method is a reusable section of code written to perform a specific task in a program.
You might be wondering why you need to separate your code into methods, rather than just writing
everything out in one big chunk. It turns out there are a few good reasons to divide your programs
into methods:

1- If something goes wrong in your code, it's much easier to find and fix bugs if you've organized
your program well. Assigning specific tasks to separate methods helps with this organization.

2- By assigning specific tasks to separate methods (an idea computer scientists call separation
of concerns), you make your program less redundant and your code more reusable—not only can you
repeatedly use the same method in a single program without rewriting it each time, but you can
even use that method in another program.

3- When we learn more about objects, you'll find out there are a lot of interesting things we can
do with methods in Ruby.


Methods are defined using the keyword def (short for "define"). Methods have three parts:

1- The header, which includes the def keyword, the name of the method, and any arguments the method
takes. (We'll get to arguments in the next section)

2- The body, which is the code block that describes the procedures the method carries out. The body is
indented two spaces by convention (as with for, if, elsif, and else statements)

3- The method ends with the end keyword.

Here's an example of what the syntax would look like for a simple function, welcome, that just prints
"Welcome to Ruby!" to the console:

    def welcome
      puts "Welcome to Ruby!"
    end


If a method takes arguments, we say it accepts or expects those arguments. We might define a function,
square, like so:

    def square(n)
      puts n ** 2
    end

and call it like this:

    square(12)
    # ==> prints "144"


The argument is the piece of code you actually put between the method's parentheses when you call it,
and the parameter is the name you put between the method's parentheses when you define it.
For instance, when we defined square above, we gave it the parameter n (for "number") and passed it the
argument 12 when we called it.

You can think of parameters as placeholders the method definition gives to arguments since it doesn't
know ahead of time exactly what argument it's going to get.

Parentheses are usually optional in Ruby, but it's a good idea to put your parameters and arguments in
parentheses for readability.

Splat arguments are arguments preceded by a *, which tells the program that the method can receive one
or more arguments.

########################################

Blocks Are Like Nameless Methods

Most methods that you've worked with have defined names that either you or someone else gave them
(i.e. [array].sort(), "string".downcase(), and so on). You can think of blocks as a way of creating
methods that don't have a name. (These are similar to anonymous functions in JavaScript or lambdas in
Python.)

Blocks can be defined with either the keywords do and end or with curly braces ({}).

Using Code Blocks

A method can take a block as a parameter. That's what .each has been doing this whole time: taking a block
as a parameter and doing stuff with it! You just didn't notice because we didn't use the optional parentheses.

Passing a block to a method is a great way of abstracting certain tasks from the method and defining those
tasks when we call the method. Abstraction is an important idea in computer science, and you can think of
it as meaning "making something simpler." Imagine if when you wanted to house hunt, you had to say, "Honey,
let's go look at configurations of concrete, plywood, and vinyl siding." That'd be crazy! Just like saying
"house" simplifies listing its components, using a block to define the task you want the method (like .each)
to do simplifies the task at hand.

############################################

Introduction to Sorting

Sorting arrays is a very common problem in computer science, and is well studied for that reason. There are
many algorithms —well-defined sequences of steps—each with its own trade-offs and advantages.

Sorting algorithms can be a great introduction to computer science as a theoretical discipline, but for
now we'll focus on how to use Ruby's built-in sorting library (which implements a few of these algorithms).

Foundations

If we were to hand you five books and ask you to arrange them, sorted by title, on a shelf, how would you do
it?

Most sorting algorithms assume we are sorting an array of items, which involves comparing any two items in
the array and deciding which should come first.

For our books example, if for any pair we always chose the book whose title came first in the alphabet, we
could devise a strategy for sorting. These "strategies" are the sorting algorithms mentioned in the previous
example. Our job is to decide how to compare two items in the list, and let Ruby decide which strategy to use.

The Combined Comparison Operator

We can also use a new operator called the combined comparison operator to compare two Ruby objects. The
combined comparison operator looks like this: <=>. It returns 0 if the first operand (item to be compared)
equals the second, 1 if the first operand is greater than the second, and -1 if the first operand is less
than the second.

A block that is passed into the sort method must return either 1, 0, or -1. It should return -1 if the first
block parameter should come before the second, 1 if vice versa, and 0 if they are of equal weight,
meaning one does not come before the other (i.e. if two values are equal)

Getting Technical

What if we wanted to sort the books by title, but from Z – A, or descending order? It appears that Ruby's
sort method only works for A – Z, or ascending order.

The sort method assumes by default that you want to sort in ascending order, but it accepts a block as an
optional argument that allows you, the programmer, to specify how two items should be compared.
