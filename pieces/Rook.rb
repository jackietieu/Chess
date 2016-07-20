
require_relative "Slideable"
class Rook < Piece
 include Slideable
  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
    " ♜ "
  end



  def move_dirs
    HORIZONTAL_DIRECTIONS
  end

end
