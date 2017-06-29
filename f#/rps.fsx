open System

type Shape = 
    | Rock = 0
    | Paper = 1
    | Scissors = 2

let choices = 
    [ Shape.Rock, Shape.Scissors;
        Shape.Paper, Shape.Rock;
        Shape.Scissors, Shape.Paper ] 
    |> Map.ofList

let rnd = System.Random()

let mutable loop = true

while loop do
    Console.WriteLine("Your move: ")
    
    let computerMove = choices.[enum<Shape>(rnd.Next(0, 3))]
    let input = Console.ReadLine()

    if not (String.IsNullOrEmpty(input)) then
        let parsed, humanMove = Enum.TryParse(input)
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
