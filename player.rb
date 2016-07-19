require_relative "Display"

class Player
  def initialize(board)#color)
    @board = Display.new(board)
    # @color = color
    # @display = display
    #@color = color
  end

  def move
    result = nil

     until result != nil
      result = @board.get_input
      @board.render
    end

    result
  end

end
