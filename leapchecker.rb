puts "enter starting year, AD"
startyr = gets.chomp
startyr = startyr.to_i

puts "enter ending year, AD"
endyr = gets.chomp
endyr = endyr.to_i

bleap = false
checkyr = startyr

while checkyr < endyr + 1
  if checkyr%4 == 0
    bleap= true
    puts checkyr
    checkyr += 1
  end
end
