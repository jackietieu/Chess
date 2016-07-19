require_relative 'Board'
require_relative 'player'
require_relative 'Display'

  class Chess
    def initialize
      @board = Board.new
      @player = Player.new(@board)
    end

    def run
      puts "Mark all the spaces on the board!"
      puts "WASD or arrow keys to move the cursor, enter or space to confirm."
      until @board.full?
        pos = @player.move
        @board.mark(pos)
      end
      puts "Hooray, the board is filled!"
    end



  def swap_turn!
    @current_player = (@pcurrent_player.color == @player1.color ? @player2 : @player1 )
  end

end


if __FILE__ == $PROGRAM_NAME
  Chess.new.run
end
