import random

def rock_paper_scissors():
    turn_options = ['rock', 'paper', 'scissors']

    while True:
        player_turn = input("Your Move: ")

        player_turn = player_turn.lower()

        opponent_turn = random.choice(turn_options)

        if player_turn in turn_options:
                print("Computer Chose:", opponent_turn)
            
                if player_turn == opponent_turn:
                    print("Tie, Replay!")
            
                elif player_turn == 'paper' and opponent_turn == 'rock':
                    print("You Win!")
                    break
                
                elif player_turn == 'scissors' and opponent_turn == 'paper':
                    print("You Win!")
                    break
                
                elif player_turn == 'rock' and opponent_turn == 'scissors':
                    print("You Win!")
                    break
                
                else:
                    print("Computer Wins!")
                    break

if __name__ == '__main__':
    rock_paper_scissors()