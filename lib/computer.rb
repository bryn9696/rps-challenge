class Computer
  def move
    random_num = rand(1..3)
    @move = 'Rock' if random_num == 3
    @move = 'Paper' if random_num == 2
    @move = 'Scissor' if random_num == 1
    @move
  end
end