class Die

  def initialize 

     roll
  end

  def roll 
    @result = 1 + rand(6)
  end

  def result
    @result
  end
  
  def cheat(n)
    if n >= 1 and n <= 7 
      @result = n
    else
      puts "D6 buddy"
    end
  end
end

 puts Die.new.result
