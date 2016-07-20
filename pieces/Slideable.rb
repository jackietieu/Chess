module Slideable

HORIZONTAL_DIRECTIONS = [
  [-1, 0],
  [0, -1],
  [0, 1],
  [1, 0]
]

DIAGONAL_DIRECTIONS = [
  [-1, -1],
  [-1, 1],
  [1, -1],
  [1, 1]
]

  #calling current_piece.moves should return an array, no need for instance vars to hold them
  def moves
    moves = []

    move_dirs.each do |dir|
      moves += grow_unblocked_moves_in_dir(dir[0], dir[1])
    end
    #(current-piece).move_dirs.each fo |dir| => iterate across each possible direction
    moves
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    moves = []
    x , y = @pos
    test_pos = [x, y]

    0.upto(8) do |length|
      test_pos = [test_pos[0] + dx, test_pos[1] + dy]
        break unless test_pos.all? { |el| el.between?(0, 7) }
        if @board[test_pos].is_a?(NullPiece)
          moves << test_pos
        elsif @board[test_pos].color != @color
          moves << test_pos
          break
        elsif @board[test_pos].color == @color
          break
        end
    end

    moves
  end

#move_dirs should be overriden by class using this module
#calling move_dirs on rook should return HORIZONTAL_DIRECTIONS by itself
#calling queen.move_dirs => HORIZONTAL_DIRECTIONS + DIAGONAL_DIRECTIONS
  def move_dirs

    # if dirs.include?(:horizontal) && dirs.include?(:diagonal)
    #   @possible_directions = HORIZONTAL_DIRECTIONS + DIAGONAL_DIRECTIONS
    # elsif dirs.include?(:horizontal)
    #   @possible_directions = HORIZONTAL_DIRECTIONS
    # else
    #   @possible_directions = DIAGONAL_DIRECTIONS
    # end
  end



end
