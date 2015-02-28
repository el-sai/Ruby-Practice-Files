def palin_rev(str)
if str == str.reverse then
	puts "#{str} is a palindrome"
else
	puts "#{str} is not a palindrome"
end
end

def palin_stack(str)
	arr = str.split("")	
	i = arr.length
	str_rev = []
		while(i>0) do
			str_rev << arr[i-1]
			i -= 1
		end
		if str == str_rev.join("") then
			puts "#{str} is a palindrome"
    else
			puts "#{str} is not a palindrome"
		end
end

def palin_loop(str)
	i = 0
	j = str.length
	n = j/2
	if j%2 == 0 then
		while(i <= n-1 && j > n) do
			 if str[i] != str[j-1] then
			 	return false
			 	break
			 end
			 i++
			 j--
		end
			puts "Is a Palindrome"
	else
	 
	end
	
end

puts " Enter the string to test for palindrome"
str = gets.chomp
#palin_stack(str)
#plain_rev(str)
palin_loop(str)
