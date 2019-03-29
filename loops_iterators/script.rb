counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

counter = 1
until counter > 10
  puts counter
  counter += 1
end

for num in 1...10 # 1 to 9
  puts num
end

for num in 1..10 # 1 to 10
  puts num
end

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end

array = [1,2,3,4,5]
array.each do |x|
  x += 10
  print "#{x}"
end

10.times { print "Chunky bacon!" }
