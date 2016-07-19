class Piece
  attr_reader :color 
  def initialize(color, pos)
    @color, @pos = color, pos
  end

  def to_s
      " x "
  end

  def present?
      true
  end


end
