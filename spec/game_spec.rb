require_relative '../app.rb'

describe Game do
  let(:game) { described_class.new('bryn') }

  it 'initializes new game objects with players stored in attributes' do
    expect(game.player1.name).to eq 'bryn'
  end

  it 'self-initializes with a class method taking player names as parameters' do
    described_class.start_game('bryn')
    expect(described_class.instance.player1.name).to eq 'bryn'
  end

  it 'self-initializes with Player 2 as a Computer when no name given' do
    described_class.start_game('bryn')
    expect(described_class.instance.player2.name).to eq 'computer'
  end

  it 'stores a game object that can be revealed through a class method' do
    described_class.start_game('bryn')

  end
end