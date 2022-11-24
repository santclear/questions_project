import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() whenSelected;

  const Answer(this.text, this.whenSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(backgroundColor: Colors.blue, color: Colors.white)),
        onPressed: whenSelected,
        child: Text(text),
      ),
    );
  }
}
