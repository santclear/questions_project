import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onRestartQuiz;

  const Result(this.score, this.onRestartQuiz, {super.key});

  String get sentenceResult {
    if (score < 8) {
      return 'Congratulations!';
    } else if (score < 12) {
      return 'You are good!';
    } else if (score < 16) {
      return 'Amazing!';
    } else {
      return 'Jedi level!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          sentenceResult,
          style: const TextStyle(fontSize: 28),
        )),
        TextButton(
          onPressed: onRestartQuiz,
          child: const Text(
            "Restart?",
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
