//ignore_for_file: avoid_print
import 'dart:io';
import 'game.dart';

void main() {
  var game = Game();
  GuessResult guessResult = GuessResult.correct;
  print("╔══════════════════════════════════════╗");
  print("║         GUESSING NUMBER GAME         ║ ");
  print("╚══════════════════════════════════════╝");

  do {
    stdout.write(" Guess the number between 1 and 100: ");
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
      print(
          "CORRECT! The answer is $guess ❤, total guesses: ${game.totalGuesses}");
    } else if (guessResult == GuessResult.tooHigh) {
      print("$guess is TOO HIGH ▲");
    } else {
      print("$guess is TOO LOW ▼");
    }
  } while (guessResult != GuessResult.correct);
}
