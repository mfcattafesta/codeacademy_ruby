REDACTED!

What You'll Be Building

Hiding information is a major part of programming: protecting passwords, establishing secure connections,
and securing programs against tampering all rely on controlling access to information.

While we won't be able to really dig into information hiding until after we cover hashes in a later course,
we can write a simple program to change a user's input with the tools we have now: arrays and iterators.

To divide the user's input into individual words Ruby has a built-in method for this called .split; it takes
in a string and returns an array. If we pass it a bit of text in parentheses, .split will divide the string
wherever it sees that bit of text, called a delimiter. For example:  text.split(",") tells Ruby to split up
the string text whenever it sees a comma.
