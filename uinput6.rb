first, second = ARGV
user_name = first
user_age = second.to_i
prompt = ">>"

puts "Hi #{user_name}."
puts "I'd like to ask you some questions."
puts "Do you like me #{user_name}?", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you use?", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You also told me that you are #{user_age} years old.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
