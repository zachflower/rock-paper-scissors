package main

import (
  "fmt"
  "time"
  "math/rand"
  "strings"
)

func main() {

  choices := map[string]string{
    // choice : beats
    "paper" : "rock",
    "rock" : "scissors",
    "scissors" : "paper",
  }

  for (true) {
    var humanMove string
    var computerMove string

    // Seed random number generator. https://gobyexample.com/random-numbers
    r := rand.New(rand.NewSource(time.Now().UnixNano()))
    num := r.Intn(3)

    if (num == 0) {
      computerMove = "rock"
    } else if (num == 1) {
      computerMove = "paper"
    } else {
      computerMove = "scissors"
    }

    fmt.Print("Your move: ")

    // get player move and lowercase
    fmt.Scanf("%s", &humanMove)
    humanMove = strings.ToLower(humanMove)

    // player move must be valid
    if (choices[humanMove] != "") {

      // calculate winner
      if ( humanMove == computerMove ) {
        fmt.Println("Tie, Replay!")
      } else if ( choices[humanMove] == computerMove ) {
        fmt.Println("You Win!")
        break
      } else if ( choices[computerMove] == humanMove ) {
        fmt.Println("Computer Wins!")
        break
      }
    }
  }
}
