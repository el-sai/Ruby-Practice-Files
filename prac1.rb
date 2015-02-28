kitty_toys = [
 {:shape => 'sock', :fabric => 'cashmere'},
 {:shape => 'mouse', :fabric => 'calico'},
 {:shape => 'eggroll', :farbic => 'chenille'}
 ]
 
 #kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
  #puts "Blixy has a #{ toy[:shape] } made of #{ toy[:fabric] }"
#end
 
kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
puts "Blixy has a "{ toy[:shape] } " made of " {toy[:fabric]}
print "\n"
end

