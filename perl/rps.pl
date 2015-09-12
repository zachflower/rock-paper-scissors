#!/usr/bin/perl

my %choices = (
  # choice => beats
  'rock' => 'scissors',
  'paper' => 'rock',
  'scissors' => 'paper'
);

# play until someome wins
while ( 1 ) {
  # calculate the computer move first, no cheating
  my $computer_move = $choices{(keys %choices)[rand keys %choices]};
  my $human_move;

  # get player move, must be valid
  while ( 1 ) {
    print "Your Move: ";
    $human_move = lc <>;

    # trim whitespace
    $human_move =~ s/^\s+|\s+$//g;

    if ( exists($choices{$human_move}) ) {
      last;
    }
  }

  # calculate winner
  if ( !($human_move cmp $computer_move) ) {
    print "Tie, Replay!\n\n";
  } elsif ( !($choices{$human_move} cmp $computer_move) ) {
    print "You Win!\n\n";
    last;
  } elsif ( !($choices{$computer_move} cmp $human_move) ) {
    print "Computer Wins!\n\n";
    last;
  }
}
