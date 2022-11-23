import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatelessWidget {
  final questions = [
    'What is your favorite color?',
    'What is your favorite pet?'
  ];

  void answer() {
    print('Ask answered');
  }

  void Function() functionThatReturnAnotherFunction() {
    return () {
      print('Ask answered #02!');
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
            Text(questions[0]),
            ElevatedButton(
              //style: ElevatedButton.styleFrom(padding: EdgeInsets.all(50)),
              child: Text('Question 1'),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text('Question 2'),
              onPressed: () {
                print('The ask 2 is selected');
              },
            ),
            ElevatedButton(
              child: const Text('Question 3'),
              onPressed: () => print('The question 3 is selected'),
            ),
            ElevatedButton(
              child: Text('Question 4'),
              onPressed: functionThatReturnAnotherFunction(),
            )
          ],
        ),
      ),
    );
  }
}
