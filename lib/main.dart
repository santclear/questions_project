import 'package:flutter/material.dart';

main() => runApp(new QuestionsApp());

class QuestionsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Text('Hello Flutter!'),
      ),
    );
  }
}
