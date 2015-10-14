var choices = {
  // choice => beats
  'paper' : 'rock',
  'rock' : 'scissors',
  'scissors' : 'paper'
};

var notifier = document.getElementById('notifier');
var input = document.getElementById('human-move');

function submitMove() {
  // calculate computer move
  // source; http://stackoverflow.com/questions/2532218/pick-random-property-from-a-javascript-object
  var computerMove = Object.keys(choices)[ Object.keys(choices).length * Math.random() << 0];
  var humanMove = input.value.toLowerCase().trim();

  if ( typeof choices[humanMove] !== 'undefined' ) {
    if ( humanMove == computerMove ) {
      // play until someome wins
      notifier.innerText = "Tie, Replay!";
    } else if ( choices[humanMove] == computerMove ) {
      notifier.innerText = "You Win!";
    } else if ( choices[computerMove] == humanMove ) {
      notifier.innerText = "Computer Wins!";
    }
  } else {
    notifier.innerText = '';
  }

  input.value = '';
  input.focus();

  return false;
}
