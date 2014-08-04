words= []
type = true

while type == true
  print "type in a word and hit enter "
  new = gets.chomp

  if new == ""
  puts words.sort
  break
  else
     words.push(new)
  end
end
