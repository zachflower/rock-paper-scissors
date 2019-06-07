package main

import (
	"fmt"
	"math/rand"
	"strings"
	"time"
)

func main() {
	// Seed random number generator. https://gobyexample.com/random-numbers
	rand.Seed(time.Now().UnixNano())

	var choice string
	choices := map[int]int{
		// choice : beats (0 -> Rock, 1 -> Paper, 2 -> Scissors)
		1: 0,
		0: 2,
		2: 1,
	}

loop:
	for {
		computerMove := rand.Intn(3)
		humanMove := -1

		// get player move and lowercase
		fmt.Print("Your move: ")
		fmt.Scanf("%s\n", &choice)
		choice = strings.ToLower(choice)

		if choice == "rock" {
			humanMove = 0
		} else if choice == "paper" {
			humanMove = 1
		} else if choice == "scissors" {
			humanMove = 2
		}

		if humanMove != -1 {
			// calculate winner
			switch humanMove {
			case computerMove:
				fmt.Println("Tie, Replay!")
			case choices[computerMove]:
				fmt.Println("Computer Wins!")
				break loop
			default:
				fmt.Println("You Win!")
				break loop
			}
		}
	}
}
