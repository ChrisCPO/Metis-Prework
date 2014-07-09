puts "sing the song"
number=99
command= nil
command = gets.chomp

while command == "yes"
  puts "#{number} bottles of beer on the wall"
  puts "#{number} bottles of beer"
  puts "take one down, pass it around"
  puts "#{number -= 1} bottles of beer on the wall"

  if number == 92
    puts "im drunk, im done"
    break
  end

    puts "sing again"
  command = gets.chomp
end
