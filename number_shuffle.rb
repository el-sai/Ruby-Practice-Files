def number_shuffle(number)
  number.to_s.split("").map {|s| s.to_i }.permutation.to_a.map {|a| a.join("") }.map {|s| s.to_i}
end

