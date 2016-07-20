require_relative "Display"

class Player
  attr_reader :color

  def initialize(color, board)
    @board = Display.new(board)
    @color = color
  end

  def move
    result = nil

     until (result != nil)
      result = @board.get_input
      @board.render
    end

    result
  end

end
