require_relative "../lib/board"

describe "A Tic Tac Toe board" do
  let(:board) { Board.new }

  it "exists" do
    Board.new
  end

  it "has locations" do
    expect(board).to respond_to(:locations)
  end

  it "can be given a locations value" do
    expect(Board.new("FAKE").locations).to eq("FAKE")
  end

  # it 'can place tokens'
  #   board.place(:fake,1,1)
  #   board.locations
  # end

end
