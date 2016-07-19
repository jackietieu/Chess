class Pawn < Piece

  def initialize(color, pos)
    @color, @pos = color, pos
  end

  def to_s
    "♙"
  end

end
