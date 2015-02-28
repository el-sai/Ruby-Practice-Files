code_words = {
  'starmonkeys' => 'Phil and Pete, those prickly chancellors of the New Reich',
  'catapult' => 'chucky go-go', 'firebomb' => 'Heat-Assisted Living',
  'Nigeria' => "Ny and Jerry's Dry Cleaning (with Donuts)",
  'Put the kabosh on' => 'Put the cable box on'
}

# swap
print " enter the new idea:"
idea = gets
code_words.each do |real,code|
idea.gsub!(real,code)
end

#save to new file
print " enter a name for the idea : "
idea_name = gets.strip
File::open("idea-" + idea_name + ".txt","w") do |f|
	f << idea
end



