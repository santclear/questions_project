import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int _questionSelected;
  final List<Map<String, Object>> _questions;
  final List<String> answers;
  final Function() _answer;

  const Quiz(
      this._questionSelected, this._questions, this.answers, this._answer,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionSelected]['text'].toString()),
        ...answers.map((t) => Answer(t, _answer)).toList()
      ],
    );
  }
}
