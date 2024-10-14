import random

def rock_paper_scissors():
    turn_options = ['Rock', 'Paper', 'Scissors']

    while True:
        
        player_turn = input("Your turn: Choose Rock, Paper, or Scissors:") 

        opponent_turn = random.choice(turn_options)
        if player_turn in turn_options:
                print("You chose:", player_turn)
            
                print("Opponent chose:", opponent_turn)
            
                if player_turn == opponent_turn:
                    print("Tie game")
            
                elif player_turn == 'Paper' and opponent_turn == 'Rock':
                    print("Player wins")
                    break
                
                elif player_turn == 'Scissors' and opponent_turn == 'Paper':
                    print("Player wins")
                    break
                
                elif player_turn == 'Rock' and opponent_turn == 'Scissors':
                    print("Player wins")
                    break
                
                else:
                    print("Opponent wins")
                    break

if __name__ == '__main__':
    rock_paper_scissors()