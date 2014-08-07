print "what year were you born?"
yr = gets.chomp
yr= yr.to_i
x=0
while x == 0
  print "what month?"
  month= gets.chomp.downcase

  if month == "january"
    month =1
    x = 1
    elsif month == "february"
      month =2
      x = 1
    elsif month == "march"
      month = 3
      x = 1
    elsif month == "april"
      month = 4
      x=1
    elsif month == "may"
      month = 5
      x=1
    elsif month == "june"
      month = 6
      x=1
    elsif month == "july"
      month = 7 
      x=1
    elsif month == "august"
      month = 8 
      x=1
    elsif month == "september"
      month = 9
      x=1
    elsif month == "october"
      month = 10
      x=1
    elsif month == "november"
      month = 11
      x=1
    elsif month =="december"
      month = 12
      x=1

    else
      puts "plese type in a month"
      x=0
  end
end

print "what day were you born"
day=gets.chomp
day=day.to_i

bday=Time.mktime(yr,month,day)
time=Time.now
time=time -bday

time=time/60/60/24/365
time.to_i.times do
  puts "spank!"
end



