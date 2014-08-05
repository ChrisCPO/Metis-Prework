puts "enter starting year, AD"
checkyr = gets.chomp
checkyr = checkyr.to_i

puts "enter ending year, AD"
endyr = gets.chomp
endyr = endyr.to_i
puts ""
leapyrs = []
while checkyr < endyr + 1
  if checkyr % 400 == 0
    leapyrs.push checkyr
  elsif checkyr % 100== 0
  elsif checkyr % 4==0 
    leapyrs.push checkyr
  end

  checkyr= checkyr + 1
end

puts leapyrs
puts  "there were #{leapyrs.length} leap years"
