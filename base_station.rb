
class  Base_Station
  attr_reader :name, :cell
  def initialize(name, cell)
    @name = name
    @cell = cell
  end

  def to_s
    "#{@name} (#{@cell})"
  end
end