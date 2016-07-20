class King < Piece
  def initialize(board, color, pos)
    @board, @color, @pos = board, color, pos
  end

  def to_s
    " ♔ "
  end


  DIRECTIONS = [
    [-1, 0],
    [0, -1],
    [0, 1],
    [1, 0],
    [-1, -1],
    [-1, 1],
    [1, -1],
    [1, 1]
  ]


  def moves
    moves = []

    DIRECTIONS.each do |dir|
      test_pos = [@pos[0] + dir[0], @pos[1] + dir[1]]
        next unless test_pos.all? { |el| el.between?(0, 7) }
        if @board[test_pos].is_a?(NullPiece)
          moves << test_pos
        elsif @board[test_pos].color != @color
          moves << test_pos
        end
    end

    moves
  end

end
