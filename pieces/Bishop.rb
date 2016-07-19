require_relative 'Piece'

class Bishop < Piece
  def initialize(color, pos)
    @color, @pos = color, pos
  end

  def to_s
    " ♗ "
  end

end
