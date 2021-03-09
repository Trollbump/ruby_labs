require 'minitest/autorun'
require_relative 'funcs.rb'
require 'faker'

class FilesTest < Minitest::Test
  def setup
    @f_name, @g_name = 'F_test.txt', 'G_test.txt'
    @f = 10.times.map { Faker::Number.number(digits: 3) }
    @g = @f.filter { |x| (x%3 == 0) and (x%7 != 0) }
    IO.write(@f_name, @f.join("\n"))
  end

  def test_1
    f(@f_name, @g_name)
    assert_equal @g, IO.read(@g_name).split("\n").map(&:to_i)
  end

  def teardown
    File.delete @f_name
    File.delete @g_name
  end
end