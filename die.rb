class Die
  attr_reader :result
  def initialize(sides, num_to_roll)
    @result = []
    @sides = sides
    @num_to_roll = num_to_roll
    roll
  end

  def roll
    @num_to_roll.times do
    @result << 1 + rand(@sides)
    end
  end

  def result
    @result
  end
end

rolls = Die.new(20, 3)
puts rolls.result
