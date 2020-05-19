require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test

    def setup()

        @person = Person.new("Eric", 55)

    end

    def test_persons_name()
        assert_equal("Eric", @person.name)
    end

    def test_persons_age()
        assert_equal(55, @person.age)
    end
end