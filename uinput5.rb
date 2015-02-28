first, second, third = ARGV

puts "The first variable is : #{first}"
puts "The second variable is : #{second}"
puts "The third variable is : #{third}"
puts "Enter the third variable again:"
var1 = $stdin.gets.chomp
if third == var1 then puts "they are same"
else puts "they are not same"
end
