puts "value 1"
x = gets.chomp.to_i

puts "action-a,s,m,d"
action = gets.chomp

puts "value 2"
y = gets.chomp.to_i

case action
  when "a"
    puts "=#{x + y}"

  when "s"
    puts "+#{x - y}"

  when "m"
    puts "=#{x * y}"

  when "d"
    puts"=#{x / y}"

end
