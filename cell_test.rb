require 'test/unit'
require_relative 'base_station.rb'
require_relative 'base_stations.rb'
require_relative 'cell.rb'

class Cell_Test < Test::Unit::TestCase
  def setup
    @cell = Cell.new(10,10)
  end

  def test_initialize
    assert_equal("10,10",@cell.to_s)
  end

  def test_distance
    assert_equal(14.142135623730951,@cell.distance(Cell.new(20,20)))
  end

  def test_coverage
    bs = Base_Stations.new()

    bs.add_station(Base_Station.new("B", Cell.new(20, 20)))
    assert_equal("weak", @cell.coverage(bs))

    bs.add_station(Base_Station.new("A", Cell.new(15, 10)))
    assert_equal("medium", @cell.coverage(bs))

    bs.add_station(Base_Station.new("A", Cell.new(12, 10)))
    assert_equal("strong", @cell.coverage(bs))

    bs.add_station(Base_Station.new("A", Cell.new(18, 19)))
    assert_equal("strong", @cell.coverage(bs))
  end
end
