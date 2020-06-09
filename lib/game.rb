require_relative "board"

class Game
  attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

  def over?
    board.full?
  end

  def tie?
    board.full? and winner.nil?
  end

  def winner
    nil
  end
end
