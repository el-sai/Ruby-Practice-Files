#first = ARGV
file_name = ARGV.first

puts "Here's your file #{file_name} contents:"
file_content = open(file_name).read
print file_content
open(file_name).close()

puts "Type the filename again:"
file_name_ag = $stdin.gets.chomp
obj2 = open(file_name_ag)
file_content_ag = obj2.read

puts file_content_ag

obj2.close()
