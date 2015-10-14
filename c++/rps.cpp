#include <ctime>
#include <iostream>
#include <string>
#include <algorithm>
#include <map>

using namespace std;

int main() {
  // map possible choices to the moves they beat
  map<string, string> choices;
  choices["rock"] = "scissors";
  choices["paper"] = "rock";
  choices["scissors"] = "paper";

  string human_move, computer_move;
  int size = choices.size();

  while ( true ) {
    // seed random number generator
    srand(time(NULL));

    // calculate computer move
    map<string, string>::iterator it = choices.begin();
    advance(it, rand() % size);
    computer_move = it->first;

    // get player input, must be valid
    cout << "Your Move: ";
    getline(cin, human_move);

    // lowercase input
    // source: https://notfaq.wordpress.com/2007/08/04/cc-convert-string-to-upperlower-case/ 
    transform(human_move.begin(), human_move.end(), human_move.begin(), ::tolower);

    // validate user input
    if ( choices.find(human_move) == choices.end() ) {
      // invalid move 
      continue;
    }

    // calculate winner
    if ( computer_move == human_move ) {
      cout << "Tie, Replay!\n\n";
      human_move = -1;
    } else if ( choices[human_move] == computer_move ) {
      cout << "You Win!\n\n";
      break;
    } else if ( choices[computer_move] == human_move ) {
      cout << "Computer Wins!\n\n";
      break;
    }
  }

  return 0;
}
