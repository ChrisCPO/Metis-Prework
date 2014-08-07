

class OrangeTree

  def initialize 
      puts "program started"
      @age = 0
      @height = 0 
      @oranges = 0
      @totaloranges = 0
      startyear
  end

  def startyear
    puts " A new year begins"
    @age += 1
    #tree dies meth here
    treegrows
    puts "your tree is #{@age} years old and #{@height} feet tall"
    groworanges
    die
    endyear
  end
  
  def treegrows
    @height += 1 + rand(3)
  end

  def groworanges
    if @height >= 12 or @age >= 4
      @age.times do
        @oranges += rand(5)
        @totaloranges += @oranges
      end
      puts "Your tree grew #{@oranges} oranges this year"
    end
  end
  
  def die
    chance = @age / 2 + rand(21)
    if chance > 30
      puts ""
      puts "Your tree died"
      puts "it produced #{@totaloranges} oranges over its life of #{@age} years"
      puts "and grew to #{@height} feet tall"
      exit
    end
  end
  
  def endyear
      puts "your tree survied another year!"
      puts ""
      puts ""
      @oranges = 0
      startyear
  end
end


 OrangeTree.new
