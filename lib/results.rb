class Results
  def decision(player1, player2)
    if player1 == "rock" && player2 == "rock"
      @winner = "draw"
    elsif player1 == "rock" && player2 == "paper"
      @winner = "Player 2 wins"
    elsif player1 == "rock" && player2 == "scissors"
      @winner = "Player 1 wins"
    elsif player1 == "paper" && player2 == "scissors"
      @winner = "Player 2 wins"
    elsif player1 == "paper" && player2 == "rock"
      @winner = "Player 1 wins"
    elsif player1 == "paper" && player2 == "paper"
      @winner = "draw"
    elsif player1 == "scissors" && player2 == "scissors"
      @winner = "draw"
    elsif player1 == "scissors" && player2 == "rock"
      @winner = "Player 2 wins"
    elsif player1 == "scissors" && player2 == "paper"
      @winner = "Player 1 wins"
    end
  end
end