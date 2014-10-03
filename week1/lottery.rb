class Lottery 
    def initialize(names)
        @names = names
        puts @names
    end

    def play 
        add_name
    end

    def add_name
        while true
            print "add name to the list> "
            @new_name = gets.chomp
            if stop_adding_names?
                break
                select_winner
            @names << @new_name 
            puts @names
            end
        end
    end

    def stop_adding_names?
        @new_name == "" 
    end


end


list = ["Richard Feynman", "Isaac Newton", "Albert Einstein" , "Paul Dirac"]

names = Lottery.new(list)
names.play
