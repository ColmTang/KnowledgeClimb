require 'test/unit'
require_relative 'cell.rb'

class Cell_Test < Test::Unit::TestCase
  def setup
    @cell = Cell.new(10,10)
  end

  def test_initialize
    assert_equal("10,10",@cell.to_s)
  end

  def test_distance

    assert_equal("",@cell.distance(Cell.new(20,20)))
  end
end