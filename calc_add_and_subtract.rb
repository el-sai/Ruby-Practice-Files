def add(numbers)
 numbers.inject { |a,n| a+n }
end

def subtract(numbers)
 numbers.inject { |a,n| a-n }
end

def calculate(*arg)
  num = []
  options = {}
	arg.each do |i|
		if i.is_a?(Hash)
			options = i
		else
			num << i
		end
		end 
		options[:add] = true if options.empty?
		puts add(num) if options[:add]
		puts subtract(num) if options[:subtract]
end

calculate(1,2,3,{:add => true, :subtract => true})
calculate(1,2,3)
