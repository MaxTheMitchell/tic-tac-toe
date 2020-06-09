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
    board.locations.values.each do |row|
      if row.values.uniq.length == 1 and (row[:left] == :o or row[:left] == :x)
        return row[:left]
      end
    end
    return nil
  end
end
