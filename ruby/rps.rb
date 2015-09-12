
choices = {
  # choice => beats
  "paper"    => "rock",
  "rock"     => "scissors",
  "scissors" => "paper"
}

# play until someone wins
while true

  print "Your move: \n"

  # calculate computer move
  computerMove = choices.keys[rand(choices.length)]

  # get vlid player move
  humanMove = gets.downcase.strip.chomp

  if choices[humanMove] != ""
    if humanMove == computerMove
      # play until someome wins
      print "Tie, Replay!\n"
    elsif choices[humanMove] == computerMove
      print "Human Wins!\n"
      break
    elsif choices[computerMove] == humanMove
      print "Computer Wins!\n"
      break
    end
  end
end