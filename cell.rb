
class Cell
  attr_reader :x, :y
  def initialize(x,y)
    @x, @y = x, y
  end

  def coverage(base_stations)
    @closest_base_distance = 21
    base_stations.each do |base_station|
      if(closest_base_distance > distance(base_station.cell))
        closest_base_distance = distance(base_station.cell)
        @closest_base_station = base_station
      end
    end
    @coverage_dist = 1/@closest_base_distance
    if(@coverage_dist > 0.3)
      @coverage = "strong"
    elsif(@coverage_dist <= 0.1)
      @coverage = "weak"
    else
      @coverage = "medium"
    end
  end

  def distance(cell)
    @dx = cell.x - @x
    @dy = cell.y - @y
    @distance = Math.sqrt((@dx*@dx) + (@dy*@dy))
    return @distance
  end

  def to_s
    "#{@x},#{@y}"
  end
end