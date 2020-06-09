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

  it 'can place tokens' do
    expect(board).to respond_to(:place)
  end

  it 'can get a paced token at a specify row and column' do
    board.place(:fake,:top,:left)
    expect(board.token_at(:top,:left)).to eq(:fake)
  end

end
