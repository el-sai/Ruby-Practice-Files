from_file, to_file = ARGV

puts "Taking Data from input file #{from_file}"
from_data = open(from_file).read
puts "Data in #{from_file} is #{from_data.length} bytes long"

puts"Does the output file exists? #{File.exist?(to_file)}"
puts "Ready, hit return to continue or CTRL-C to abort"

$stdin.gets

puts"writing data to output file #{to_file}..."
open(to_file,"a").write("\n" + from_data)
puts"Data has been written successfully"

open(from_file).close()
open(to_file).close()

