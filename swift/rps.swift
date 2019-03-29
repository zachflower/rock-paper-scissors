var choose: String
var gameStatus = "You losse"
var gameEnded: Bool
var game = ["Rock", "Papper", "Scissors"]
game.shuffle()
print("Rock Papper Scissors?")
let value = readLine()
print(game[0])

repeat{
    gameEnded = true
    switch(value){
        case "Rock":
            if(game[0] == "Scissors"){
                    gameStatus = "You Won"
            }
            break
        case "Papper":
            if(game[0] == "Rock"){
                gameStatus = "You Won"
            }
            break
        case "Scissors":
            if(game[0] == "Papper"){
                gameStatus = "You Won"
            }
            break
        default:
            print("Choose a valid option")
            gameEnded = false
            break
    }
}while(!gameEnded)

print(gameStatus)
