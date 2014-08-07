
class OrangeTreeGame
      @age = 0
      @height = 0 
      @oranges = 0
      @totaloranges = 0
      @marketoranges = 1000
      @price = 1.00
      @lastyr_marketoranges = 1000
      @warehouse = []
  def initialize 
      puts "welcome to the grove where you can grow your own orange tree"
      startyear
  end

  def startyear
    puts " A new year begins"
    @age += 1
    inquire
    treegrows
    puts "your tree is #{@age} years old and #{@height} feet tall"
    groworanges
    die
    endyear
  end
  
  def treegrows
    if @water == true
      @height += 1 + rand(3)
    else
      @height += rand(2)
    end
  end
  
  def inquire 
    puts "choose your action"
    puts "1: water your tree, grows your tree"
    puts "2: fertilize your tree, for nicer fruit"
    puts "3: sell oranges"
    choice = gets.chomp
    
    case choice
    
    when 1
      @watere = true
      puts "you watered your tree"
    when 2
      @fertilize = true
      puts "your fertilized your tree"
    when 3
      groworanges
      calcprice @oranges
      price = @oranges * @price
      puts "sell #{@oranges} for #{price} each totaling #{@price} ? Y/N"
      answer = gets.chomp.downcase

      if answer == "y"
        @money += @price
        @oranges = 0
      end
    else
      puts "enter 1,2,3"
    end
  end

  def groworanges
    if @grow == true
    if @height >= 12 or @age >= 4
      height = @height
      height = height / 3
      if @fertilize == true
        height.times do
          @oranges += rand(4) + 1
        end
      else 
        height.times do
          @oranges += rand(3)
        end
      end
      @age.times do
          @oranges += rand(3)
      end  
      @totaloranges += @oranges
      puts "Your tree grew #{@oranges} oranges this year"
    else
    end
    end
    @grow = false
  end

  def calcprice soldoranges
    @marketoranges += soldoranges
    if  @marketoranges > @lastyr_marketoranges
      @price -= @marketoranges * 0.001
    end
    if @marketoranges < @lastyr_marketoranges
      @price += @marketoranges * 0.001
    end
    @lastyr_marketoranges = @marketoranges
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
      puts "-------------------------------------------------------------"
      @marketoranges -= rand(@oranges + rand(100))
      @oranges = 0
      @grow = true

      startyear
  end
end

 OrangeTreeGame.new
