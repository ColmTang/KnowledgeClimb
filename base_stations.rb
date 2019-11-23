class Base_Stations
  attr_reader :stations

  def initialize
    @stations = []
  end

  def add_station(base_station)
    @stations << base_station
  end

  def to_s
    @stations.join(' ')
  end
end
