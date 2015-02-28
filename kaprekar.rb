def kaprekar?(k)
 n = k.to_s.size
 sq = k*k
 s_sq = sq.to_s
 l = s_sq.size
 i = 0
 j = l
 emp_i = ""
 emp_j = ""
 while( i < l-n ) do
 	emp_i = emp_i + s_sq[i]
 	i += 1
 	end
 	while( j > l-n ) do
 	emp_j = emp_j + s_sq[j-1]
 	j -= 1
 	end
 	#puts "#{emp_i.to_i}"
 	#puts "#{emp_j.reverse.to_i}"
 	#puts "#{emp_i.to_i + emp_j.reverse.to_i}"
 	if (emp_i.to_i + emp_j.reverse.to_i) == k then
      true
 	else
      false
 	end
end

kaprekar?(9)
kaprekar?(46)
kaprekar?(55)
kaprekar?(90)
kaprekar?(297)
kaprekar?(703)

