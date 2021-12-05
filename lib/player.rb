require './lib/computer.rb'

class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def makemove (move = nil)
    @move = move if @name != 'computer'
    @move = Computer.new.move if @name == 'computer'
  end
end
