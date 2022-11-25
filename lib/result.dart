import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int score;

  const Result(this.score, {super.key});

  String get sentenceResult {
    if(score < 8) {
      return 'Congratulations!';
    } else if(score < 12) {
      return 'You are good!';
    } else if(score < 16) {
      return 'Amazing!';
    } else {
      return 'Jedi level!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          sentenceResult,
          style: const TextStyle(fontSize: 28),
        ));
  }
}
