readline = require 'readline'
rl = readline.createInterface
    input: process.stdin
    output: process.stdin  #setup for input

rockpaperscissors = (input) ->
    CTU = #Computer input To User input
        0: 'R'      
        1: 'P'
        2: 'S'
    UTW = #User input To Word output
        R: 'Rock'
        P: 'Paper'      
        S: 'Scissors'
    
    
    compchoice = Math.floor(Math.random() * 3 ) #chooses a random number 0-2
    
    console.log '\n' + UTW[input] + ' vs. ' + UTW[CTU[compchoice]] + '\n' #displays your choice and the computer's coice

    if input in Object.keys(UTW)
        if input == CTU[(compchoice + 1) % 3]   #User move is 1 clockwise of Computer moev
            console.log("You win!!!")           #User wins
        
        if input == CTU[(compchoice + 2) % 3]   #User move is 2 clockwise or 1 counter-clockwise of Computer input
            console.log("You LOSE!")            #User loses

        if input == CTU[compchoice]             #User move is same as Computer move
            console.log("It's a DRAW")    

    
rl.question "Rock, Paper, Scissors, SHOOT: ", (input) ->
  rockpaperscissors(input)          
                            #ask for player input
  rl.close()