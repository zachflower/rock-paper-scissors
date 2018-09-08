extern crate rand;

use rand::{
    distributions::{Distribution, Standard},
    Rng,
};
use std::io;
use std::str::FromStr;

fn main() {
    use self::Choice::*;

    loop {
        let computer: Choice = rand::random();

        let player: Choice = loop {
            let mut input = String::new();
            println!("Your move: ");
            io::stdin().read_line(&mut input).unwrap();

            match input.parse() {
                Ok(s) => break s,
                Err(_) => println!("Bad move, try again."),
            }
        };

        match (&player, &computer) {
            (Paper, Rock) | (Scissors, Paper) | (Rock, Scissors) => println!("You Win"),
            _ if player == computer => println!("Tie, Replay!"),
            _ => println!("Computer Wins!"),
        };
    }
}

#[derive(PartialEq)]
enum Choice {
    Rock,
    Paper,
    Scissors,
}

// Choice can be parsed from a String.
impl FromStr for Choice {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s.trim().to_lowercase().as_str() {
            "r" | "rock" => Ok(Choice::Rock),
            "p" | "paper" => Ok(Choice::Paper),
            "s" | "scissors" => Ok(Choice::Scissors),
            _ => Err(()),
        }
    }
}

// A random instance of Choice can be created.
// This can be automated/made simpler with third party libs.
impl Distribution<Choice> for Standard {
    fn sample<R: Rng + ?Sized>(&self, rng: &mut R) -> Choice {
        match rng.gen_range(0, 3) {
            0 => Choice::Rock,
            1 => Choice::Paper,
            _ => Choice::Scissors,
        }
    }
}
