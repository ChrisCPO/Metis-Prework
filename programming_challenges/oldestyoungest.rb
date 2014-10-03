class ListCreator
  def initialize
    @list = []
    @age_list =[]
  end

  def new_list
    puts "enter name and age of person"
    loop do
      new_person = gets.chomp
      break if new_person.empty?
      new_person = new_person.split
      @list << Person.new(new_person[0], new_person[1])
    end
    @list.each { |person| @age_list << person.age.to_i }
    find_low_high
  end

  def find_low_high
    @age_list = @age_list.sort
    print @age_list
    puts
    high = @age_list.pop
    low = @age_list.shift

    oldest_person = @list.index do |person| 
       person.age == high
    end
    youngest_person = @list.index do |person|
      person.age == low
    end

    puts " The oldest person is #{@list[oldest_person].name}"
    puts " The youngest person is #{@list[youngest_person].name}"
  end
end

class Person
  attr_accessor :age, :name
  def initialize(name, age)
    @age = age.to_i
    @name = name
  end
end

listmaker = ListCreator.new
listmaker.new_list
