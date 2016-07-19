require_relative "Piece"
require_relative "NullPiece"
class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8){Array.new(8, NullPiece.instance)}
  end

  def [](pos)
    x,y = pos
    @grid[x][y]
  end

  def []=(pos,value)
    x, y = pos
    @grid[x][y] = value
  end

  def full?
    @grid.all? do |row|
      row.all? { |piece| piece.present? }
    end
  end

  def mark(pos)
    x, y = pos
    if pos != nil
      #should move the piece by marking start_pos = NullPiece
      #end_pos = piece from start_pos
      @grid[x][y] = Piece.new
    end
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

  #[Rook, Knight, Bishop, Queen, King, ]

  def rows
    @grid
  end

  def move(start, end_pos)
    #This should update the 2D grid and also the moved piece's position.
    #You'll want to raise an exception if:
    #(a) there is no piece at start or
    #(b) the piece cannot move to end_pos.
    if @grid[start].is_a?(NullPiece)
      raise ArgumentError.new "No piece in this location. Pick again."
    end
    if @grid[end_pos].nil?
      raise ArgumentError.new "Not on the board. Pick again."
    end
        # raise Exception.new "Can't move there!" if @grid[start][end_pos].is_a? NullPiece
        # retry
  end


end
