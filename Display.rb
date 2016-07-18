require_relative 'Board'
require 'colorize'
require_relative 'Cursorable'
#puts "This is blue".colorize(:blue)

class Display
  include Cursorable

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
    @select = false
  end

  def render

      @board.grid.each.with_index do |row,i|
        row.each_with_index do |square, j|
          print " #{square} ".colorize(:background => :black) if (i + j).even?
          print " #{square} ".colorize(:background => :white) if (i + j).odd?
        end
        print "\n"
      end
  end


end
chess = Board.new
displayed = Display.new(chess)
displayed.render
