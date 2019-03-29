Arrays

An array can be used to store a list of values in a single variable. You can
stuff any number of numbers in there, you can repeat numbers, and they don't
have to be in numeric order!

Each element in the array has what's called an index. The first element is at
index 0, the next is at index 1, the following is at index 2, and so on. We can
access elements of the array directly through these numbers using brackets,
like so:
    array = [5, 7, 9, 2, 0]
    array[2]
    # returns "9", since "9" is at index 2

Arrays of arrays are called multidimensional arrays, since the act of adding
more arrays expands the array out of its string-like shape.

################################################################################

Hashes

We know that arrays are indexed with numbers that start with 0 and go up to the
array's length minus one. (Think about it: an array with four elements has the
indices 0, 1, 2, and 3.)

But what if we want to use numeric indices that don't go in order from 0 to the
end of the array? What if we don't want to use numbers as indices at all? We'll
need a new array structure called a hash.

Hashes are sort of like JavaScript objects or Python dictionaries. If you
haven't studied those languages, all you need to know that a hash is a
collection of key-value pairs. Hash syntax looks like this:

    hash = {
      key1 => value1,
      key2 => value2,
      key3 => value3
    }

Values are assigned to keys using =>. You can use any Ruby object for a key or
value.

You can access values in a hash just like an array.
