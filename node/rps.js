process.stdin.resume();
process.stdin.setEncoding('utf8');

var choices = {
  // choice => beats
  'paper' : 'rock',
  'rock' : 'scissors',
  'scissors' : 'paper'
};

process.stdout.write("Your Move: ");
process.stdin.on('data', function (input) {
  // calculate computer move
  // source; http://stackoverflow.com/questions/2532218/pick-random-property-from-a-javascript-object
  var computer_move = Object.keys(choices)[ Object.keys(choices).length * Math.random() << 0];

  // get player move, must be valid
  var human_move = input.trim();

  if ( typeof choices[human_move] !== 'undefined' ) {
    if ( human_move == computer_move ) {
      // play until someome wins
      console.log("Tie, Replay!\n");
    } else if ( choices[human_move] == computer_move ) {
      console.log("You Win!\n");
      process.exit();
    } else if ( choices[computer_move] == human_move ) {
      console.log("Computer Wins!\n");
      process.exit();
    }
  }

  process.stdout.write("Your Move: ");
});

