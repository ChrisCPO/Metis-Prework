puts "ask grandma a question"
question = gets.chomp
grandma = true

while grandma == true

  if question == "BYE"
    puts "Not So soon Sonny"
    question = gets.chomp
    if question == "BYE"
      puts "Really your leaving allready"
      question = gets.chomp
      if question == "BYE"
        puts "Ok Good Bye Sonny"
        break
      end
    end
  elsif question == question.upcase
    answer = rand(1..3)
    case answer
      when 1
        puts"No I did not put the cat in the dryer."
      when 2
        puts "no not since #{rand(21)+1920}."
      when 3
        puts "My see what big teeth I have!"
        puts "ther're dentures."
    end
    question =gets.chomp
  else
    puts"HUH SPEAK UP SONNY"
    question = gets.chomp
  end
end
