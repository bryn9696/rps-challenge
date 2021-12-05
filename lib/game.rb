require_relative 'player'
class Game

  attr_reader :player1, :player2, :game_instance

  def initialize(player1, player2 = nil)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def self.instance
    @game_instance
  end

  def self.start_game(player1, player2 = 'computer')
    @game_instance ||= Game.new(player1, player2)
  end

end