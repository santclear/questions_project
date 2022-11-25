import 'package:flutter/material.dart';
import 'package:questions_project/quiz.dart';
import './question.dart';
import 'answer.dart';
import 'result.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'grade': 10},
        {'text': 'Red', 'grade': 10},
        {'text': 'Green', 'grade': 10},
        {'text': 'White', 'grade': 10},
      ]
    },
    {
      'text': 'What is your favorite pet?',
      'answers': [
        {'text': 'Rabbit', 'grade': 10},
        {'text': 'Snake', 'grade': 5},
        {'text': 'Elephant', 'grade': 3},
        {'text': 'Lion', 'grade': 1},
      ]
    },
    {
      'text': 'What is your favorite instructor?',
      'answers': [
        {'text': 'Leo', 'grade': 10},
        {'text': 'Maria', 'grade': 5},
        {'text': 'João', 'grade': 3},
        {'text': 'Pedro', 'grade': 1},
      ]
    }
  ];

  void _answer() {
    if (hasQuestionSelected) {
      setState(() {
        _questionSelected++;
      });
    }
  }

  bool get hasQuestionSelected {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          materialTapTargetSize: MaterialTapTargetSize.padded),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: hasQuestionSelected
            ? Quiz(
                questions: _questions,
                questionSelected: _questionSelected,
                onAnswer: _answer)
            : const Result(),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
