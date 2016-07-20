class Pawn < Piece
  ATTACK_PATH = {
    white: [[-1, 1], [-1, -1]],
    black: [[1, -1], [1, 1]]
  }

  MOVEMENT_PATH = {
    white: [-1, 0],
    black: [1, 0]
  }



  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
    @initial = true
  end

  def to_s
    " ♙ "
  end

  def moves
    moves = []
    attack_path = ATTACK_PATH[@color]
    move_path = MOVEMENT_PATH[@color]

    single_move = [@pos[0] + move_path[0], @pos[1]]
    moves << single_move if @board[single_move].is_a?(NullPiece)

    if @initial
      initial_move = [@pos[0] + move_path[0]*2, @pos[1]]
      moves << initial_move
      # require 'byebug'; debugger
      @initial = false
    end

    attack_path.each do |diag|
      temp_pos = [@pos[0] + diag[0], @pos[1] + diag[1]]
      moves << temp_pos if @board[temp_pos].color != color && @board[temp_pos].color != :red
    end

    moves
  end

end
