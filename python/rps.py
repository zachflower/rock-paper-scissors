import random

def rock_paper_scissors():
    turn_options = ['rock', 'paper', 'scissors']

    while True:
        
        player_turn = input("your move:") 

        opponent_turn = random.choice(turn_options)
        if player_turn in turn_options:
                print("computer chose:", opponent_turn)
            
                if player_turn == opponent_turn:
                    print("tie, replay!")
            
                elif player_turn == 'paper' and opponent_turn == 'rock':
                    print("you win!")
                    break
                
                elif player_turn == 'scissors' and opponent_turn == 'paper':
                    print("you win!")
                    break
                
                elif player_turn == 'rock' and opponent_turn == 'scissors':
                    print("you win!")
                    break
                
                else:
                    print("computer wins!")
                    break

if __name__ == '__main__':
    rock_paper_scissors()