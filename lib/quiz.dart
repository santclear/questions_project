import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int questionSelected;
  final List<Map<String, Object>> questions;
  final Function() onAnswer;

  const Quiz(
      {required this.questions,
      required this.questionSelected,
      required this.onAnswer,
      super.key});

  bool get hasQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasQuestionSelected
        ? questions[questionSelected]['answers'] as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Question(questions[questionSelected]['text'].toString()),
        ...answers
            .map((answer) => Answer(answer['text'] as String, onAnswer))
            .toList()
      ],
    );
  }
}
