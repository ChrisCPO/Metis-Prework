class Hallway 
    def initialize(lockers)
        @lockers = lockers
    end

    def start
        1.upto(100) do |student_id|
            @lockers.size.times do |locker_id|
                if (locker_id + 1) % student_id == 0 
                    @lockers[locker_id].toggle
                end
            end
        end

        @lockers.size.times do |locker_id|
            puts "#{locker_id + 1}. #{@lockers[locker_id].status}"
        end
    end
end

class Locker
    attr_reader :status

    def initialize 
        @status = "closed"
    end

    def toggle
        if status == "closed"
            @status = "open"
        else
            @status = "closed"
        end
    end
end

hallway = Hallway.new(Array.new(100) { Locker.new })
hallway.start
