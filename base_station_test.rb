require 'test/unit'
require_relative 'cell.rb'
require_relative 'base_station.rb'

class Base_Station_Test < Test::Unit::TestCase
  def setup
    @base_station = Base_Station.new("Alpha",Cell.new(20,10))
  end

  def test_initialize
    assert_equal("Alpha (20,10)",@base_station.to_s)
  end
end