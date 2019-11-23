class Base_Stations
  attr_reader :stations

  def initialize
    @stations = []
  end

  def add_station(base_station)
    @stations << base_station
  end

  def to_s
    str = ""
    @all_stations.each do |base_station|
      str += base_station.to_s
      str += ' '
    end
    return str
  end
end
