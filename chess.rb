require_relative 'Board'
require_relative 'Player'
require_relative 'Display'

class Chess
  def initialize(player1, player2)
    @board = Board.new
    @display = Display.new @board
    @player1 = Player.new(:white, @display)
    @player2 = Player.new(:black, @display)
    @current_player = @player1
  end

  def play
    
  end

  def swap_turn!
    @current_player = (@pcurrent_player.color == @player1.color ? @player2 : @player1 )
  end
end
