import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int questionSelected;
  final List<Map<String, Object>> questions;
  final Function() onAnswer;

  const Quiz({
    required this.questions,
    required this.questionSelected,
    required this.onAnswer,
    super.key});

  bool get hasQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> answers = hasQuestionSelected
        ? questions[questionSelected].cast()['answers']
        : [];

    return Column(
      children: [
        Question(questions[questionSelected]['text'].toString()),
        ...answers.map((t) => Answer(t, onAnswer)).toList()
      ],
    );
  }
}
