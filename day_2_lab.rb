class Bus

    attr_reader :route, :destination

    def initialize(route, destination)
        @route = route
        @destination = destination
    end

    def engine_noise()
        return "Brum Brum"
    end


end