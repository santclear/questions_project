import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;

  final questions = [
    'What is your favorite color?',
    'What is your favorite pet?'
  ];

  void _answer() {
    setState(() {
      _questionSelected++;
    });
    print(_questionSelected);
  }

  void Function() functionThatReturnAnotherFunction() {
    return () {
      print('Question answered #02!');
    };
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
        body: Column(
          children: [
            Question(questions[_questionSelected]),
            const Answer('Answer 1'),
            const Answer('Answer 2'),
            const Answer('Answer 3')
          ],
        ),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
