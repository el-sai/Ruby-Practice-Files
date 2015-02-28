puts "Type a sentence:"
sen = gets
puts "Type a number:"
num = gets.chomp.to_i

puts sen.reverse * num
