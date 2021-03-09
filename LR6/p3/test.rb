require 'minitest/autorun'
require_relative 'funcs.rb'

class CalculationTest < Minitest::Test
  def test_xsinx
    assert_equal f(1, -2, 2) {|x| Math.sin(x)*x }, f(1, -2, 2, ->(x) { Math.sin(x)*x })
  end

  def test_tanx
    assert_equal f(1, -2, 2, proc { |x| Math.tan(x) }), f(1, -2, 2, ->(x) { Math.tan(x) })
  end
end