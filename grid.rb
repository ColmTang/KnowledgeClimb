require_relative 'cell.rb'

class Grid
  attr_reader :grid, :size
  def initialize(size)
    @grid = []
    @size = size
  end

  def populate_grid
    0.upto(@size-1) do |i|
      0.upto(@size-1) do |j|
        @grid.add_cell(Cell.new(i,j))
      end
    end
  end

  def add_cell(cell)
    @grid << cell
  end

  def to_s
    @grid.join('|')
  end
end