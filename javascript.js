var computerChoice = Math.random();
var humanChoice = process.argv.slice(2);

if (computerChoice < 0.33) {
  computerChoice = 'rock';
} else if (computerChoice > 0.66) {
  computerChoice = 'paper';
} else {
  computerChoice = 'scissors';
}

console.log(humanChoice);