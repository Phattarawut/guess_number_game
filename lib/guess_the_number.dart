//ignore_for_file: avoid_print
import 'dart:io';
import 'game.dart';

bool? playAgain(again) {
    if (again == 'y' || again == 'Y') {
      return true;
    } else if (again == 'n' || again == 'N') {
      return false;
    }
}

void main() {
  late GuessResult guessResult;
  String? again = '';
  do {
    stdout.write("Enter a maximum number to random: ");
    var max = stdin.readLineSync();
    var numMax = int.tryParse(max!);
    var game = Game(maxRandom: numMax!);
    print("╔═══════════════════════════════════════");
    print("║         GUESSING NUMBER GAME          ");
    print("╟───────────────────────────────────────");

    do {
      stdout.write("║ Guess the number between 1 and $max: ");
      var input = stdin.readLineSync();
      if (input == null) {
        print("Error, input is null");
        continue;
      }

      var guess = int.tryParse(input);

      if (guess == null) {
        print("Input error, please enter number only");
        continue;
      }

      guessResult = game.doGuess(guess);

      if (guessResult == GuessResult.correct) {
        print("║ ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}");
        print("╟───────────────────────────────────────");
        print("║               THE END                 ");
        print("╚═══════════════════════════════════════");
      } else if (guessResult == GuessResult.tooHigh) {
        print("║ ➜ $guess is TOO HIGH ▲");
        print("╟───────────────────────────────────────");
      } else {
        print("║ ➜ $guess is TOO LOW ▼");
        print("╟───────────────────────────────────────");
      }
    } while (guessResult != GuessResult.correct);
    while (true) {
      stdout.write("Play again ? (Y/N): ");
      again = stdin.readLineSync();
      if(again == 'y' || again == 'Y' || again == 'n' || again == 'N'){
        break;
      }
    }
  } while (playAgain(again)!);

  Game.summary();
}
