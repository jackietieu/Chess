class Knight < Piece

  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
    " ♘ "
  end

  def moves
    moves = []
    all_directions = [[-1, -2], [-1, 2], [1, -2], [1, 2], [-2, 1], [-2, -1], [2, -1], [2, 1]]
    x, y = @pos

    all_directions.each do |dir|
      test_pos =  [@pos[0] + dir[0], @pos[1] + dir[1]]
      next unless test_pos.all? { |el| el.between?(0, 7) }
      #require 'byebug'; debugger

        if @board[test_pos].is_a?(NullPiece)
          moves << test_pos
        elsif @board[test_pos].color != @color
          moves << test_pos
        end
      end

    moves
  end

end
