t_initial = Time.now
file_name = ARGV.first

f = File.open(file_name)
input = []
result = []
f.each_line {|l| input << l.chomp}
input.each do |i|
	temp_array = []
	input.each do |j|
		temp_array.push(j) if i.downcase.split('').sort.join('') == j.downcase.split('').sort.join('')
	end
	result.push(temp_array)
end

result = result.uniq
anagrams = []
n_anagrams = []

result.each do |r|
	if r.count > 1 then
		anagrams.push(r)
	else
		n_anagrams.push(r.join(""))
	end
end

f1 = File.open("n_anagrams.txt","r+")
f1.truncate(0)
  n_anagrams.each do |w|
  f1.write(w)
  f1.write("\n")
  end
f1.close()

f2 = File.open("anagrams.txt","r+")
f2.truncate(0)
 anagrams.each do |w|
 		str1 = w.join(",")
    f2.write(str1)
    f2.write("\n")
 end
f2.close()
f.close()



#puts result.uniq	

puts "Total Time Taken: #{(Time.now - t_initial)} seconds"
