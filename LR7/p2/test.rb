require 'minitest/autorun'
require_relative 'funcs.rb'

class ClassTest < Minitest::Test
  def test_hierarchy
    tr = Triangle.new 0, 0, 0, 1, 1, 0
    pr = Prism.new 10, 0, 0, 0, 1, 1, 0
    assert_equal tr.class, Triangle #Triangle.new(0, 0, 0, 1, 1, 0).class, Triangle
    assert_equal pr.class, Prism #Prism.new(10, 0, 0, 0, 1, 1, 0).class, Prism
    assert_equal pr.class.superclass, Triangle #Prism.new(10, 0, 0, 0, 1, 1, 0).superclass, Triangle
  end
end 