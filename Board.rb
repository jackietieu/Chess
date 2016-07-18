
class Board
      attr_reader :grid
      def initialize
          @grid = Array.new(8){Array.new(8){nil}}
      end

      def [](pos)
          x,y = pos
          @grid[x][y]
      end

      def []=(pos,value)
        x, y = pos
        @grid[x][y] = value
      end


      # def move start end_pos
      #   #This should update the 2D grid and also the moved piece's position.
      #   #You'll want to raise an exception if:
      #   #(a) there is no piece at start or
      #   #(b) the piece cannot move to end_pos.
      #   if @grid[start].is_a?(NullPiece)
      #     raise ArgumentError.new "No piece in this location. Pick again."
      #   end
      #   if @grid[end_pos].nil?
      #     raise ArgumentError.new "Not on the board. Pick again."
      #   end
      #       # raise Exception.new "Can't move there!" if @grid[start][end_pos].is_a? NullPiece
      #       # retry
      #
      #
      #
      #
      # end


end
