t_initial = Time.now
file_name = ARGV.first

f = File.open(file_name)
	input = []
	f.each_line {|l| input << l.chomp}  #taking all the strings from file into array
	h = {}  #Hash for storing ASCII sum of various strings
	input.each do |s|  #Finding the ASCII sum of each string and grouping strings on ASCII
		asc = 0
		s.each_byte do |c|
			asc += c     #finding ASCII sum of a string
		end
			if h.key?(asc) then
				h[asc].push(s)   #pushing the string if ASCII sum is already present in Hash
			else
				h[asc] = [s]  #each ASCII sum represents to an array of strings with that ASCII
			end
	end
	
n_an = h.values.select {|a| a.count == 1}.flatten	#Non-anagrams 

temp1 = h.values.select {|a| a.count > 1}  #groups of arrays with possible anagrams

result = []

temp1.each do |a|  #iterating over the main array which has arrays of possible anagrams
	a.each do |s1|  #iterating the inside array with same strings of same ASCII sum
		temp_array = []
		a.each do |s2|   
			temp_array.push(s2) if s1.downcase.split('').sort == s2.downcase.split('').sort 
		end
			result.push(temp_array)
	end
end
		
result = result.uniq
an = []

result.each do |r|  # separating anagrams arrays and non anagrams
	if r.count > 1 then
		an.push(r)
	else
		n_an.push(r.join(""))
	end
end
	
puts "Anagrams : #{an.flatten.count}"
puts "Non Anagrams : #{n_an.flatten.count}"	
	
f1 = File.open("n_anagrams.txt","r+")
f1.truncate(0)
  n_an.each do |w|
  f1.write(w)
  f1.write("\n")
  end
f1.close()

f2 = File.open("anagrams.txt","r+")
f2.truncate(0)
  an.each do |w|
 		str1 = w.join(",")
    f2.write(str1)
    f2.write("\n")
 end
f2.close()
f.close()



#puts result.uniq	

puts "Total Time Taken: #{(Time.now - t_initial)} seconds"
