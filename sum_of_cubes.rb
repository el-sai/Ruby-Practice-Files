def sum_of_cubes(a, b)
  s = 0
  (a..b).each { |i| s = s + (i**3) }
  puts "#{s}"
end

sum_of_cubes(3,5)
