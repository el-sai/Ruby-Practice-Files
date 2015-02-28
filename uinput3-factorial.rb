puts "Type a number for the factorial:"
n = gets.to_i
r = (1..n).reduce(:*) || 1
puts n.to_s + "! = #{r}"
