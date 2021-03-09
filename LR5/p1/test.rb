require 'minitest/autorun'
require_relative 'funcs.rb'

class TestString < Minitest::Test
    def test_calc_example_1
        assert_equal 0.0, calc(0, 0)
    end
    def test_calc_example_2
        assert_in_delta -1.009, calc(0, 100), 0.001
    end
end