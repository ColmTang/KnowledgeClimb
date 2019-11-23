require 'test/unit'
require_relative 'grid.rb'

class Grid_Test < Test::Unit::TestCase
  def setup
    @grid = Grid.new(3)
  end

  def test_initialize
    assert_equal([],@grid.grid)
    assert_equal(3,@grid.size)
  end

  def test_populate_grid
    @grid.populate_grid

    assert_equal([],@grid.to_s)
  end
end