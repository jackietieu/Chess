require_relative 'Slideable'
class Queen < Piece
 include Slideable
  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
    " ♕ "
  end

  def move_dirs
    HORIZONTAL_DIRECTIONS + DIAGONAL_DIRECTIONS
  end

end
