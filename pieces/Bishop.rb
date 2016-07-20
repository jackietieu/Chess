require_relative 'Slideable'
require_relative 'Piece'

class Bishop < Piece
  include Slideable

  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
    " ♗ "
  end

  def move_dirs
    DIAGONAL_DIRECTIONS
  end

end
