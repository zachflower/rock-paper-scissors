open System

type Shape = 
    | rock = 0
    | paper = 1
    | scissors = 2

let choices = 
    [ Shape.rock, Shape.scissors;
        Shape.paper, Shape.rock;
        Shape.scissors, Shape.paper ] 
    |> Map.ofList

let rnd = System.Random()

let mutable loop = true

while loop do
    Console.WriteLine("Your move: ")
    
    let computerMove = choices.[enum<Shape>(rnd.Next(0, 3))]
    let input = Console.ReadLine()

    if not (String.IsNullOrEmpty(input)) then
        let parsed, humanMove = Enum.TryParse(input.ToLower())
        if parsed then
            Console.WriteLine("Computer chose " + computerMove.ToString())
            if humanMove = computerMove then
                Console.WriteLine("Tie, Replay!")
            elif choices.[humanMove] = computerMove then
                Console.WriteLine("You win!")
                loop <- false
            elif choices.[computerMove] = humanMove then
                Console.WriteLine("Computer wins!")
                loop <- false
