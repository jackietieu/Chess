require_relative 'Board'
require_relative 'Cursorable'
require 'colorize'

class Display
  include Cursorable

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end
  #
  # def render
  #     @board.grid.each.with_index do |row,i|
  #       row.each_with_index do |piece.to_s.colorize, j|
  #         print " #{piece.to_s.colorize} ".colorize(:background => :black) if (i + j).even?
  #         print " #{piece.to_s.colorize} ".colorize(:background => :white) if (i + j).odd?
  #       end
  #       print "\n"
  #     end
  # end

  def render
    system("clear")
    puts "Fill the grid!"
    puts "Arrow keys, WASD, or vim to move, space or enter to confirm."
    build_grid.each { |row| puts row.join }
  end

  def build_grid
     @board.rows.map.with_index do |row, i|
       build_row(row, i)
     end
   end

   def build_row(row, i)
     row.map.with_index do |piece, j|
       color_options = colors_for(i, j)
       piece.to_s.colorize(color_options)
     end
   end

   def colors_for(i, j)
     if [i, j] == @cursor_pos
       bg = :light_red
     elsif (i + j).odd?
       bg = :black
     else
       bg = :white
     end
     { background: bg, color: :white }
   end
end
chess = Board.new
displayed = Display.new(chess)
displayed.render
