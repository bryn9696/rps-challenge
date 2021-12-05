require_relative '../app.rb'

describe Player do
  subject(:player) { described_class.new('bryn') }

  it 'Stores player names' do
    expect(player.name).to eq 'bryn'
  end

  it 'Records a player\'s move' do
    player.makemove('Rock')
    expect(player.move).to eq 'Rock'
  end
end