class Cell
  attr_reader :x, :y
  def initialize(x,y)
    @x, @y = x, y
  end

  def coverage(base_stations)
    closest = base_stations.stations.map { |station| distance(station.cell) }.min
    coverage = 1 / (1 + closest)

    if coverage > 0.3
      "strong"
    elsif coverage > 0.1
      "medium"
    else
      "weak"
    end
  end

  def distance(cell)
    Math.sqrt((cell.x - @x) ** 2 + (cell.y - @y) ** 2)
  end

  def to_s
    "#{@x},#{@y}"
  end
end
