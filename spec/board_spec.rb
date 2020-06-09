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

  it 'is empty at first' do
    expect(board).to be_empty
  end

  it 'is no longer empty when a token is placed' do 
    board.place(:fake,:top,:left)
    expect(board).to_not be_empty
  end

  it 'becomes empty when it is reset' do 
    board.place(:fake,:top,:left)
    board.reset
    expect(board).to be_empty
  end

  it 'is full when all the rows in locations have 3 values' do 
    expect(Board.new({top:{left: 1,middle: 2,right: 3}})).to be_full
  end
end
