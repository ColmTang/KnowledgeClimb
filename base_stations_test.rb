require 'test/unit'
require_relative 'base_stations.rb'
require_relative 'base_station.rb'
require_relative 'cell.rb'

class Base_Stations_Test < Test::Unit::TestCase
  def setup
    @base_stations = Base_Stations.new
    Base_Stations.send(:attr_reader, :all_stations)
  end

  def teardown
    Base_Stations.send(:undef_method, :all_stations)
  end

  def test_initialize
    assert_equal([],@base_stations.stations)
  end

  def test_to_s
    @base_stations.add_station(Base_Station.new("Alpha",Cell.new(10,10)))
    @base_stations.add_station(Base_Station.new("Beta",Cell.new(20,20)))
    @base_stations.add_station(Base_Station.new("Charlie",Cell.new(30,30)))
    @base_stations.add_station(Base_Station.new("Delta",Cell.new(40,40)))
    assert_equal("Alpha (10,10) Beta (20,20) Charlie (30,30) Delta (40,40)",@base_stations.to_s)
  end
end
