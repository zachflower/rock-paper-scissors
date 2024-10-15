# Contributing to Rock, Paper, Scissors

Thank you for considering contributing to our Rock, Paper, Scissors project! We appreciate your interest and effort in helping us create "Rock, Paper, Scissors" programs in various programming languages.

## How to Contribute

1. **Fork the Repository**: Start by forking the repository to your GitHub account.
2. **Clone the Repository**: Clone your forked repository to your local machine.
    ```sh
    git clone https://github.com/your-username/rock-paper-scissors.git
    cd rock-paper-scissors
    ```
3. **Create a New Branch**: Create a new branch for your contribution.
    ```sh
    git checkout -b new-language-branch
    ```
4. **Add Your Implementation**: Add your implementation in the appropriate directory or create a new directory if the language is not yet represented. Follow the guidelines below:
    - The game should continue until either the player or the computer wins. That means an infinite loop.
        - The player should be able to choose between rock, paper, and scissors with any case and any leading/trailing whitespace (hint: use a case-insensitive comparison and trim the input).
        - The computer should randomly choose between rock, paper, and scissors.
        - The winner should be determined by the rules of the game: rock beats scissors, scissors beats paper, and paper beats rock.
        - The player should be prompted to enter their choice by the printed message `Your Move: `.
        - If the player enters an invalid choice, the program should repeat the prmpt until a valid choice is entered.
        - If the player wins, the program should print `You Win!` and exit.
        - If the computer wins, the program should print `Computer Wins!` and exit.
        - If it's a tie, the program should print `Tie, Replay!` and continue the game.
    - Implement command line applications, unless explicitly impossible due to language constraints (i.e. CSS/HTML/Scratch/etc).
    - Unless it is absolutely, 100% necessary (it shouldn't be), do not use third-party libraries or packages. Try to use standard libraries whenever possible.
    - Every language should have a README file explaining (or at least pointing to an official resource explaining) how to install, compile, and run the source.
    - If the language is not yet represented, create a new directory with the language name in lowercase and add your implementation there (i.e. `c/`, `python/`, `ruby/`, etc).
    - If the language is already represented, add your implementation to the existing directory.
    - All implementations should be in the form of a single file named `rps.ext`, where `ext` is the file extension for the language. If the language does not have a standard file extension, use the most common one.
5. **Commit Your Changes**: Commit your changes with a meaningful commit message.
    ```sh
    git add .
    git commit -m "Implemented rock-paper-scissors in [language]"
    ```
6. **Push to Your Fork**: Push your changes to your forked repository.
    ```sh
    git push origin new-language-branch
    ```
7. **Submit a Pull Request**: Go to the original repository on GitHub and submit a pull request from your forked repository.

## Guidelines

- Ensure your code follows the project's coding style and guidelines.
- Test your implementation to make sure it works as expected.
- If you see something that can be improved upon, please let us know or submit a pull request with the changes yourself.
- Be respectful and considerate in your communications and contributions.

### A Note on AI-Created Submissions

While we welcome contributions generated with the assistance of AI tools, we ask that you:

- Review and understand the code before submitting it.
- Ensure that the code adheres to our guidelines and coding standards.
- Test the code thoroughly to confirm it works as expected.
- Clearly indicate in your pull request that the submission was created with the help of AI.

## Resources

Before you get started, you might find the following resources helpful:

- [Rosetta Code](http://rosettacode.org/)
- [Esolangs](https://esolangs.org/)
- [Stack Overflow](http://stackoverflow.com/)

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

Thank you for your contributions!

Happy coding!