import 'package:flutter/material.dart';

main() => runApp(new QuestionsApp());

class QuestionsApp extends StatelessWidget {
  final questions = [
    'What is your favorite color?',
    'What is your favorite pet?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              child: Text('Question 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Question 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Question 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
