g = File.read('input/3').split.map(&:chars).transpose.map { |a| b = a.select.count { |c| c == "0" }; b > a.size / 2 ? "0" : "1" }.join.to_i(2)
puts g * (g ^ (2**12 -1))
