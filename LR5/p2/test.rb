require 'minitest/autorun'
require_relative 'funcs.rb'

class TestString < Minitest::Test
    def test_change_example
      assert_equal 'темп кек лул1', change('лол нигга кек лул1 лул2', 'темп')
    end
end