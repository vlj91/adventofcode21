input = File.read('input/1').split.map(&:to_i)

count = 0
previous = input.first

# For each line with an index
for line in input do
  if line > previous
    puts "#{line} is greater than #{previous}"
    count += 1
  else
    puts "#{line} is not greater than #{previous}"
  end

  previous = line
end

puts count
