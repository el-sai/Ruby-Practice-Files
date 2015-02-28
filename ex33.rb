
def test_while(n,x)
i = 0
numbers = []
while i < n
 puts " At the top i is #{i}"
 numbers.push(i)
 
 i += x
 puts "Numbers now: ", numbers
 puts "At the bottom i is #{i}"
end
puts "The numbers:"
numbers.each {|num| puts "#{num}"}
end

test_while 6,2

