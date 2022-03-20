import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onPressedHandler;
  const TextControl({Key? key, required this.onPressedHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressedHandler, child: const Text('Reset Question'));
  }
}
