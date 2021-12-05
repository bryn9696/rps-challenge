require 'results'

describe Results do
  let(:results) { described_class.new }

  it 'gives the winner of a rocks, paper, scissor game' do
    expect(results.decision("rock", "scissors")).to eq 'Player 1 wins'
  end
end