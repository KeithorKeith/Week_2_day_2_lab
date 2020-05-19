require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus')

class BusTest < MiniTest::Test

    def setup()

        @bus = Bus.new(22, "Ocean Terminal")

        @passenger1 = Person.new("Sara", 29)
        @passenger2 = Person.new("Eugene", 28)

        # @passengers = [@passenger1, @passenger2]

    end

    def test_route()
        assert_equal(22, @bus.route())
    end

    def test_destination()
        assert_equal("Ocean Terminal", @bus.destination())
    end

    def test_engine_noise()
        assert_equal("Brum Brum", @bus.engine_noise())
    end

    def test_total_passengers()
        @bus.pick_up_passenger(@passenger1)
        @bus.pick_up_passenger(@passenger2)
        assert_equal(2, @bus.total_passengers())
    end

    def test_pick_up_passenger()
        new_passenger = Person.new("Keith", 30)
        @bus.pick_up_passenger(new_passenger)
        assert_equal(1, @bus.passengers().size)
    end

    def test_can_drop_off_passanger_from_bus()
        @bus.pick_up_passenger(@passenger1)
        @bus.pick_up_passenger(@passenger2)
        @bus.drop_off_passenger(@passenger1)
        assert_equal(1, @bus.total_passengers())
    end

    def test_remove_all_passangers
        @bus.pick_up_passenger(@passenger1)
        @bus.pick_up_passenger(@passenger2)
        @bus.remove_all_passengers()
        assert_equal(0, @bus.total_passengers())
    end
end