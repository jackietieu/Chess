require_relative "Display"

class Player
  def initialize(color, display)#color)
    @color = color
    @display = display
    #@color = color
  end

  def select_pos
    result = nil

    until result
      result = @display.get_input
      @display.render
    end

    result
  end

end
