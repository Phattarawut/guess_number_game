//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;

  var isCorrect = false;
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
    c_Guess++;
    isCorrect = doGuess(guess, answer);
  } while (!isCorrect);
}

var c_Guess = 0;

bool doGuess(int guess, int answer) {
  if (guess == answer) {
    print("CORRECT! The answer is $answer ❤, total guesses: $c_Guess");
    return true;
  } else if (guess > answer) {
    print("$guess is TOO HIGH ▲");
    return false;
  } else {
    print("$guess is TOO LOW ▼");
    return false;
  }
}
