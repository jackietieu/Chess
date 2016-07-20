require_relative 'Board'
require_relative 'player'
require_relative 'Display'

class Chess
  def initialize
    @board = Board.new
    @players = {
      white: Player.new(:white, @board),
      black: Player.new(:black, @board)
      }
    @current_player = @players.keys.first
  end

  def run
    puts "Mark all the spaces on the board!"
    puts "WASD or arrow keys to move the cursor, enter or space to confirm."

    until @board.full?
      start_pos = nil
      end_pos = nil
      piece_to_be_moved = NullPiece.instance
     puts 'here'
     puts "#{@current_player}"
      until start_pos && end_pos && (piece_to_be_moved.moves.include?(end_pos))
        if start_pos
          until piece_to_be_moved.moves.include?(end_pos)
            end_pos = @players[@current_player].move
          end
            #  require 'byebug';debugger
         @board[start_pos], @board[end_pos] = NullPiece.instance, piece_to_be_moved.update_pos(end_pos)
         swap_turn!
         break
        else
          until (piece_to_be_moved.color == @current_player) && !(piece_to_be_moved.moves.empty?)
            start_pos = @players[@current_player].move
            piece_to_be_moved = @board[start_pos]
          end


          # (@board[result].color == @color) && !(@board[result].moves.empty?)

        end
      end



      # @board[start_pos] = NullPiece.instance

    end

    puts "Hooray, the board is filled!"
  end

  def swap_turn!
    if @current_player == :white
      @current_player = :black
    else
      @current_player = :white
    end
    puts 'swapped'
  end
end


if __FILE__ == $PROGRAM_NAME
  Chess.new.run
end
