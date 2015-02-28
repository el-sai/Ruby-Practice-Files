input_file = ARGV.first

def print_all(f)
 puts f.read
end

def rewind(f)
 f.seek(0)
end
 
def print_a_line(line_count, f)
 puts "#{line_count}, #{f.gets.chomp}"
end

file_obj = open(input_file)
 
puts "reads everything from the file"
print_all(file_obj)

puts "Now rewind the pointer to beginning of file"
rewind(file_obj)

puts "Printing all the Lines"
current_line = 1
print_a_line(current_line,file_obj)
current_line = current_line + 1
print_a_line(current_line,file_obj)
current_line += 1
print_a_line(current_line,file_obj)

file_obj.close()
