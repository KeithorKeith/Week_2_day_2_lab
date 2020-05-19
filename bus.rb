class Bus

    attr_reader :route, :destination, :passengers

    def initialize(route, destination)
        @route = route
        @destination = destination
        @passengers = []
    end

    def engine_noise()
        return "Brum Brum"
    end

    def pick_up_passenger(passenger)
        @passengers.push(passenger)
    end

    def total_passengers()
        return @passengers.size 
    end

    def drop_off_passenger(passenger)
        @passengers.delete(passenger)
    end

    def remove_all_passengers()
        @passengers.clear
    end


end