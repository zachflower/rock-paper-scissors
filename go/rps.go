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

    // Random numbers are deterministic in Go, use time to produce a different number each time. https://gobyexample.com/random-numbers
    s1 := rand.NewSource(time.Now().UnixNano())
    r1 := rand.New(s1)
    num := r1.Intn(3)

    if (num == 0) {
      computerMove = "rock"
    } else if (num == 1) {
      computerMove = "paper"
    } else {
      computerMove = "scissors"
    }

    fmt.Println("Your move: ")
    fmt.Scanf("%s", &humanMove)

    humanMove = strings.ToLower(humanMove)

    if (choices[humanMove] != "") {
      if ( humanMove == computerMove ) {
        fmt.Println("Tie, Replay!\n")
      } else if ( choices[humanMove] == computerMove ) {
        fmt.Println("Human Wins!\n")
        break
      } else if ( choices[computerMove] == humanMove ) {
        fmt.Println("Computer Wins!\n")
        break
      }
    }
  }
}