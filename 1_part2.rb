input = File.read('input/1').split.map(&:to_i)

# https://apidock.com/ruby/Enumerable/each_cons
puts input.each_cons(3).map(&:sum).each_cons(2).count{ |a, b|
  b > a
}
