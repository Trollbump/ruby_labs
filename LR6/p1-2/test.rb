require 'minitest/autorun'
require_relative 'funcs.rb'

class SequenceSumTest < Minitest::Test
  def test_epsilon_1000
    eps = 10**-3
    assert_in_delta 2, sum_method_2(eps)[0], 0.01
  end

  def test_epsilon_10000
    eps = 10**-4
    assert_in_delta 2, sum_method_2(eps)[0], 0.001
  end
end