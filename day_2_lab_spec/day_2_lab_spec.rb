require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../day_2_lab')

class BusTest < MiniTest::Test

    def setup()

        @bus = Bus.new(22, "Ocean Terminal")

    end

    def test_route()
        assert_equal(22, @bus.route())
    end

    def test_destination()
        assert_equal("Ocean Terminal", @bus.destination())
    end

end