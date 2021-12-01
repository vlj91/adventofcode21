input = File.read('input/1').split.map(&:to_i)

count = 0
previous = input.first

for line in input do
  if line > previous
    count += 1
  end

  previous = line
end

puts count
