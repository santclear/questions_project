import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;

  final List<Map<String, Object>> questions = [
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
    List<String> answers = questions[_questionSelected].cast()['widgets'];

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
            Question(questions[_questionSelected]['text'].toString()),
            ...answers.map((t) => Answer(t, _answer)).toList()
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
