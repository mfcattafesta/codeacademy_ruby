puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

# We sort hash from smallest to largest by count. Just so you know, the .sort_by
# function returns an array of arrays, but that's fine for our purposes.
# Finally, we reverse the array order so that the word with the largest counts
# are first.

# Note that we must first convert the value from a number to a string using .to_s
# before we can concatenate it.
