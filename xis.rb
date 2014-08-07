puts "give me a number"

x= gets.chomp.to_i
if x > 2
  puts "x is greater then 2"
elsif x < 2 and x != 0
  puts "x is 1"
else 
puts "i cant guess the number"
end
