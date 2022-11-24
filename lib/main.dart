import 'package:flutter/material.dart';
import './question.dart';

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
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_questionSelected]),
            ElevatedButton(
              //style: ElevatedButton.styleFrom(padding: EdgeInsets.all(50)),
              child: Text('Question 1'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Question 2'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: const Text('Question 3'),
              onPressed: _answer,
            )
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
