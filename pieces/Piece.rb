class Piece
  attr_reader :color
  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
      " x "
  end

  def present?
      true
  end

 def move

 end

 def update_pos(new_pos)
   @pos = new_pos
   self 
 end

end
