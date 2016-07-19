require_relative 'pieces/Bishop'
require_relative 'pieces/King'
require_relative 'pieces/Knight'
require_relative 'pieces/Pawn'
require_relative 'pieces/Queen'
require_relative 'pieces/Rook'
require_relative 'pieces/modules/Stepable'
require_relative 'pieces/modules/Slideable'

require_relative "pieces/Piece"
require_relative "NullPiece"

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8){Array.new(8, NullPiece.instance)}
    self.fill_pieces
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

  BACK_ROW = [[Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook], Array.new(8) {Pawn}]

  def fill_pieces
    require 'byebug'
    0.upto(1).each do |i|

      BACK_ROW[i].each_with_index do |piece, j|
        debugger if BACK_ROW[i][j].nil?
        @grid[i][j] = BACK_ROW[i][j].new(:black, [i, j])
      end

      BACK_ROW[i].each_with_index do |piece, j|
        @grid[7 - i][j] = BACK_ROW[i][j].new(:white, [7 - i, j])
      end
    end
          #debugger
  end

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
