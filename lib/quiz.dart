import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final Function(int) onAnswer;

  const Quiz(
      {required this.questions,
      required this.selectedQuestion,
      required this.onAnswer,
      super.key});

  bool get hasQuestionSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasQuestionSelected
        ? questions[selectedQuestion]['answers'] as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'].toString()),
        ...answers
            .map((answer) => Answer(
                  answer['text'].toString(),
                  () => onAnswer(int.parse(answer['score'].toString())),
                ))
            .toList()
      ],
    );
  }
}
