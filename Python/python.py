import random

def rock_paper_scissors():
    
    turn_options = ['Rock', 'Paper', 'Scissors']

    player_turn = input("Your turn: Choose Rock, Paper, or Scissors:") 

    opponent_turn = random.choice(turn_options)

    print("You chose:", player_turn)

    

    for x in player_turn:

        if x != "Rock" or "Paper" or "Scissors":
            print("Incorrect option for turn. Choose Rock, Paper, or Scissors")
            print(input("Your turn: Choose Rock, Paper, or Scissors:"))
        
            

        else: 
            print("Opponent chose:", opponent_turn)

            if player_turn == opponent_turn:
                print("Tie game")
            elif player_turn == 'Paper' and opponent_turn == 'Rock':
                print("Player wins")
            elif player_turn == 'Scissors' and opponent_turn == 'Paper':
                print("Player wins")
            elif player_turn == 'Rock' and opponent_turn == 'Scissors':
                print("Player wins")
            else:
                print("Opponent wins")
    

if __name__ == '__main__':
    rock_paper_scissors()