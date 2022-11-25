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
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'text': 'What is your favorite pet?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'text': 'What is your favorite instructor?',
      'answers': ['Maria', 'João', 'Leo', 'Pedro']
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
