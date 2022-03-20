import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String textQuestion;
  final String textAnswer;
  final VoidCallback onPressedHandler;
  const TextOutput(
      {Key? key,
      required this.textQuestion,
      required this.textAnswer,
      required this.onPressedHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            textQuestion,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAnswer,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        OutlinedButton(
            onPressed: onPressedHandler, child: const Text('Next Question'))
      ],
    );
  }
}
