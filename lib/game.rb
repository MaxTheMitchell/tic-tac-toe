require_relative "board"

class Game

  attr_reader :board
  
  def initialize(board = Board.new)
    @board = board
  end

  def over?
    board.full?
  end

end
