input = File.read('input/2').split

depth = 0
horizontal = 0
aim = 0
depth2 = 0

for line in File.read('input/2').split("\n") do
  things = line.split(' ')
  command = things[0]
  amount = things[1].to_i

  case command
  when "forward"
    horizontal += amount
    depth2 += (amount * aim)
  when "down"
    depth += amount
    aim += amount
  when "up"
    depth -= amount
    aim -= amount
  end
end

puts horizontal*depth
puts horizontal*depth2
