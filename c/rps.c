#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  // map possible choices to the moves they beat
  const char *choices[3] = {"rock", "paper", "scissors"};
  const char *beats[3] = {"scissors", "rock", "paper"};

  char input[255];

  int size = (int)(sizeof((choices)) / sizeof((choices[0])));
  int k, i;
  int computer_move = -1;
  int human_move = -1;

  while ( 1 ) {
    // seed random number generator
    srand(time(NULL));

    // calculate computer move
    computer_move = (int)(rand() % size);

    // get player input, must be valid
    while ( human_move == -1 ) {
      printf("Your Move: ");
      scanf("%s", input);

      // lowercase input
      // source: http://www.cquestions.com/2008/01/write-c-program-to-conversion-from_03.html
      for ( i=0; i <= strlen(input); i++) {
        if ( input[i] >= 65 && input[i] <= 90 ) {
          input[i] = input[i] + 32;
        }
      }

      // validate user input
      for ( k = 0; k < size; k++ ) {
        if ( !strcmp(input, choices[k]) ) {
          human_move = k;
        }
      }
    }

    // calculate winner
    if ( computer_move == human_move ) {
      puts("Tie, Replay!\n");
      human_move = -1;
    } else if ( !strcmp(beats[human_move], choices[computer_move]) ) {
      puts("You Win!\n");
      break;
    } else if ( !strcmp(choices[human_move], beats[computer_move]) ) {
      puts("Computer Wins!\n");
      break;
    }
  }

  return(0);
}
