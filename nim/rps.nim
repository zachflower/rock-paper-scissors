from random import rand, randomize
from strutils import parseEnum

type Choice {.pure.} = enum Rock, Paper, Scissors
const choiceRange = ord(low(Choice))..ord(high(Choice))

proc readEnum[T](): T =
  while true:
    try:
      return parseEnum[T](readLine(stdin))
    except ValueError:
      echo "Bad move, try again."

while true:
  # Seed random number generator
  randomize()

  # Random computer choice
  let computer = Choice(rand(choiceRange))

  # Get validated player input
  echo "Your move: "
  let player = readEnum[Choice]()

  # Calculate winner
  case (3 + ord(computer) - ord(player)) mod 3
  of 1:
    echo "Computer Wins!"
  of 2:
    echo "You Win!"
  else:
    echo "Tie, replay!"
