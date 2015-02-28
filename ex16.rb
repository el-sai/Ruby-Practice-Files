file_name = ARGV.first
prompt = ">>"

puts "We're going to erase #{file_name}"
puts "If you don't want that, hit CTRL-C(^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(file_name, "w")

puts "Erasing the Data"
target.truncate(0)
puts "Insert the Lines to be entered into the file:"
puts "Line 1:", prompt
l1 = $stdin.gets.chomp
puts "Line 2:", prompt
l2 = $stdin.gets.chomp
puts "Line 3:", prompt
l3 = $stdin.gets.chomp
puts "Saving the lines into the file..."
target.write(l1)
target.write("\n")
target.write(l2 + "\n" + l3)

target.close()

puts"Now lets open the text file in which the data is inserted"
puts"Please enter the file name:", prompt
fname = $stdin.gets.chomp
puts open(fname).read
open(fname).close()
