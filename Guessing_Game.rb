class GuessingGame
    GAME_LENGTH = 5

    def initialize
        @trys = 1
        @wins = 0
        greeting
        play_round
        display_score
    end

    def play_round
        try = 0

        GAME_LENGTH.times do
            @round = GameRound.new
            @round.play
            if @round.user_guessed_correctly?
                @wins += 1
            end
            try = @round.trys
        end
    end

    def greeting
        msg =  "Welcome to the Game :)"
        puts msg 
        puts "-" * msg.length
    end   

    def display_score
        puts "you won #{@wins} out of #{GAME_LENGTH}"
    end
end




class GameRound
    MAX_NUMBER = 5

    def play   
        pick_number
        user_guess
        print_results
    end

    def pick_number
        @number = rand(1..MAX_NUMBER)
    end

    def user_guess
        print "pick a number between 1 and #{MAX_NUMBER}: "
        @guess = gets.chomp.to_i
        too_high
    end
    
    def too_high
        if @guess > MAX_NUMBER 
            puts "number too high"
            user_guess
        end
    end

    def user_guessed_correctly?
        @guess == @number
    end

    def print_results
         if user_guessed_correctly? 
            puts "Correct!"
            @trys = 1
         else
            user_guess
            if user_guessed_correctly?
                puts "Correct!"
                @trys = 2
            else
                user_guess
                if user_guessed_correctly?
                    puts "Correct!"
                    @trys = 3
                else
                    puts "Sorry, the number was #{@number}"
                end
            end
         end
    end

    def trys
        @trys
    end
end

GuessingGame.new
