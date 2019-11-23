require_relative 'grid.rb'
require_relative 'cell.rb'
require_relative 'base_station.rb'
require_relative 'base_stations.rb'

grid = Grid.new(21)
base_stations = Base_Stations.new

IO.foreach('base_stations.txt') do |line|
  data = line.split
  base_stations.add_station(Base_Station.new(data[0],Cell.new(data[1],data[2])))
end
puts base_stations.to_s

