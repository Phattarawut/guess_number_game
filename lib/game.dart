//ignore_for_file: avoid_print
import 'dart:math';

// enumeration
enum GuessResult {
  correct,
  tooHigh,
  tooLow;
}
final List<int> myList = [];

class Game {
  final int answer;
  int _totalGuess = 0;

  //constructor
  Game({int maxRandom = 100}) : answer = Random().nextInt(maxRandom) + 1{
    //print('answer is $answer');
  }

  GuessResult doGuess(int guess) {
    _totalGuess++;

    if (guess == answer) {
      myList.add(_totalGuess);
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  //getter
  int get totalGuesses {
    return _totalGuess;
  }

  static void summary() {
    print("You've played ${myList.length} games");
    for (int i = 0 ; i < myList.length ; i++) {
      print("🚀 game# ${i+1}: ${myList[i]} guesses");
    }
  }
}
