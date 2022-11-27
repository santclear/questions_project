import 'package:flutter/material.dart';
import 'package:questions_project/quiz.dart';
import './question.dart';
import 'answer.dart';
import 'result.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'text': 'What is your favorite pet?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ]
    },
    {
      'text': 'What is your favorite instructor?',
      'answers': [
        {'text': 'Leo', 'score': 10},
        {'text': 'Maria', 'score': 5},
        {'text': 'João', 'score': 3},
        {'text': 'Pedro', 'score': 1},
      ]
    }
  ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  void _restartQuiz(String buttonName) {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
    print(buttonName);
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
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
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswer: _answer)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
