class Piece
  def initialize color , board ,pos
      @color = color
      @board = board
      @pos = pos
      @select = false
  end

  def to_s
      " x "
  end

  def present?
      true
  end


end
